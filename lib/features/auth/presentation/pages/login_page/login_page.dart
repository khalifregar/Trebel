import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:trebel/core/extensions/size_extensions.dart';

// Pages
import 'package:trebel/features/dashboard/presentation/pages/dashboard_page.dart';

// Widgets
import 'package:trebel/features/auth/presentation/widgets/login_widget/login_logo.dart';
import 'package:trebel/features/auth/presentation/widgets/login_widget/login_email_field.dart';
import 'package:trebel/features/auth/presentation/widgets/login_widget/login_password_field.dart';
import 'package:trebel/features/auth/presentation/widgets/login_widget/login_remember_forgot.dart';

// Bloc & Model
import 'package:trebel/features/auth/data/models/requests/user_auth_request.dart';
import 'package:trebel/features/auth/presentation/bloc/user_auth/user_auth_bloc.dart';
import 'package:trebel/locator.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<UserAuthBloc>(),
      child: const _LoginContent(),
    );
  }
}

class _LoginContent extends StatefulWidget {
  const _LoginContent({super.key});

  @override
  State<_LoginContent> createState() => _LoginContentState();
}

class _LoginContentState extends State<_LoginContent> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;

  void _onLoginPressed() {
    final email = _emailController.text.trim();
    final password = _passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Email dan password tidak boleh kosong")),
      );
      return;
    }

    context.read<UserAuthBloc>().add(
          UserAuthEvent.loginRequested(
            UserAuthRequest(email: email, password: password),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return BlocListener<UserAuthBloc, UserAuthState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (user) async {
            // 🔒 Tunggu sebentar agar token pasti tersimpan
            await Future.delayed(const Duration(milliseconds: 300));
            if (context.mounted) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => const DashboardPage()),
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
      child: Scaffold(
        backgroundColor: const Color(0xFF222831),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.width),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80.h),
              const Center(child: LoginLogo()),
              SizedBox(height: 32.h),
              Center(
                child: Text(
                  localizations.loginTitle,
                  style: GoogleFonts.poppins(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Center(
                child: Text(
                  localizations.loginSubtitle,
                  style: GoogleFonts.poppins(
                    fontSize: 12.sp,
                    color: Colors.white70,
                  ),
                ),
              ),
              SizedBox(height: 40.h),
              LoginEmailField(controller: _emailController),
              SizedBox(height: 20.h),
              LoginPasswordField(
                controller: _passwordController,
                obscureText: _obscurePassword,
                onToggle: () {
                  setState(() => _obscurePassword = !_obscurePassword);
                },
              ),
              SizedBox(height: 10.h),
              const LoginRememberForgotSection(),
              SizedBox(height: 30.h),
              SizedBox(
                width: double.infinity,
                height: 50.h,
                child: ElevatedButton(
                  onPressed: _onLoginPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00BF63),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: Text(
                    localizations.loginButton,
                    style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }
}
