import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:trebel/core/extensions/size_extensions.dart';
import 'package:trebel/features/auth/user/presentation/widgets/register_widget/register_form_section.dart';
import 'package:trebel/l10n/app_localizations.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  void _onRegisterPressed(BuildContext context, String email, String name, String password) {
    if (email.isEmpty || name.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Semua field harus diisi')),
      );
      return;
    }

    // TODO: Implementasi repository.register() di sini
    debugPrint('Register dengan email: $email, nama: $name, password: $password');

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Register berhasil! (dummy sementara)')),
    );

    // TODO: Kalau berhasil, navigate ke halaman berikutnya
    // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const SelectPickCard()));
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: const Color(0xFF222831),
      body: SingleChildScrollView(
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
                _onRegisterPressed(context, email, name, password);
              },
            ),
            SizedBox(height: 40.height),
          ],
        ),
      ),
    );
  }
}
