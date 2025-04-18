import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:trebel/core/common/constant/preference_constants.dart';
import 'package:trebel/core/common/helpers/preference_helper.dart';
import 'package:trebel/core/extensions/size_extensions.dart';

import 'package:trebel/features/auth/data/models/requests/user_auth_request.dart';
import 'package:trebel/features/auth/presentation/bloc/user_auth/user_auth_bloc.dart';
import 'package:trebel/features/auth/presentation/widgets/register_widget/register_form_section.dart';

import 'package:trebel/features/dashboard/presentation/pages/dashboard_page.dart'; // ⬅️ Tambahkan ini
import 'package:trebel/injection.dart';
import 'package:trebel/locator.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserAuthBloc>(
      create: (_) => locator<UserAuthBloc>(),
      child: Builder(
        builder: (context) {
          final localizations = AppLocalizations.of(context)!;

          return Scaffold(
            backgroundColor: const Color(0xFF222831),
            body: BlocListener<UserAuthBloc, UserAuthState>(
              listener: (context, state) async {
                state.whenOrNull(
                  success: (user) async {
 if ((user.accessToken ?? '').isNotEmpty) {
    await setStringValuePreference(
      key: PreferenceConstants.token,
      value: user.accessToken!,
    );
  } else {
    debugPrint('❌ accessToken kosong di response!');
  }


                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Register berhasil!')),
                    );

                    // Delay kecil agar snackbar terlihat sebelum navigasi
                    await Future.delayed(const Duration(milliseconds: 300));
                    if (context.mounted) {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (_) => const DashboardPage(),
                        ),
                      );
                    }
                  },
                  failure: (message) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(message)),
                    );
                  },
                );
              },
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 24.width),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 80.height),
                    Center(
                      child: Text(
                        localizations.registerTitle,
                        style: GoogleFonts.poppins(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 32.height),
                    RegisterFormSection(
                      onSubmit: (email, name, password) {
                        context.read<UserAuthBloc>().add(
                              UserAuthEvent.registerRequested(
                                UserAuthRequest(
                                  email: email,
                                  name: name,
                                  password: password,
                                ),
                              ),
                            );
                      },
                    ),
                    SizedBox(height: 40.height),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
