import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trebel/core/extensions/size_extensions.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:trebel/features/auth/presentation/pages/forgoten_password/forgot_password_page.dart';

class LoginRememberForgotSection extends StatefulWidget {
  const LoginRememberForgotSection({super.key});

  @override
  State<LoginRememberForgotSection> createState() => _LoginRememberForgotSectionState();
}

class _LoginRememberForgotSectionState extends State<LoginRememberForgotSection> {
  bool _isRemembered = false;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              value: _isRemembered,
              onChanged: (value) {
                setState(() => _isRemembered = value ?? false);
              },
              activeColor: const Color(0xFF00BF63),
              checkColor: Colors.white,
            ),
            Text(
              localizations.rememberMe,
              style: GoogleFonts.poppins(
                fontSize: 12.spFont,
                color: Colors.white70,
              ),
            ),
          ],
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ForgotPasswordPage()),
            );
          },
          child: Text(
            localizations.forgetPassword,
            style: GoogleFonts.poppins(
              fontSize: 12.spFont,
              color: const Color(0xFF00BF63),
            ),
          ),
        ),
      ],
    );
  }
}
