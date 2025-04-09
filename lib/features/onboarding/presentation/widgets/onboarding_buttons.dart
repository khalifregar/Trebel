import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trebel/core/extensions/size_extensions.dart';
import 'package:trebel/features/auth/presentation/pages/login_page/login_page.dart';
import 'package:trebel/features/auth/presentation/pages/register_page/register_page.dart';

class OnboardingButtons extends StatelessWidget {
  const OnboardingButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Column(
      children: [
        // Google Button
        SizedBox(
          width: double.infinity,
          height: 50.height,
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: Image.asset(
              'assets/icons/google_ic.png',
              width: 20.width,
              height: 20.height,
            ),
            label: Text(
              localizations.continueWithGoogle,
              style: GoogleFonts.poppins(
                fontSize: 14.spFont,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.radius),
              ),
            ),
          ),
        ),

        SizedBox(height: 16.height),

        // Apple Button
        SizedBox(
          width: double.infinity,
          height: 50.height,
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.apple, size: 20.width),
            label: Text(
              localizations.continueWithApple,
              style: GoogleFonts.poppins(
                fontSize: 14.spFont,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.radius),
              ),
            ),
          ),
        ),

        SizedBox(height: 16.height),

        // Trebel Account Button
        SizedBox(
          width: double.infinity,
          height: 50.height,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const LoginPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              surfaceTintColor: Colors.white,
              side: BorderSide(color: Colors.white.withOpacity(0.4)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.radius),
              ),
              elevation: 0,
            ),
            child: RichText(
              text: TextSpan(
                style: GoogleFonts.poppins(
                  fontSize: 14.spFont,
                  fontWeight: FontWeight.w600,
                ),
                children: [
                  TextSpan(
                    text:
                        '${localizations.loginWithTrebel.split('Trebel').first}',
                    style: const TextStyle(color: Colors.white),
                  ),
                  const TextSpan(
                    text: 'Trebel',
                    style: TextStyle(color: Color(0xFF00BF63)),
                  ),
                ],
              ),
            ),
          ),
        ),

        SizedBox(height: 24.height),

        // Bottom Text - "Create Account"
        Center(
          child: RichText(
            text: TextSpan(
              text: localizations.newToTrebel,
              style: GoogleFonts.poppins(
                fontSize: 12.spFont,
                color: Colors.white70,
              ),
              children: [
                TextSpan(
                  text: localizations.createAccount,
                  style: GoogleFonts.poppins(
                    fontSize: 12.spFont,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const RegisterPage(),
                        ),
                      );
                    },
                ),
              ],
            ),
          ),
        ),

        SizedBox(height: 40.height),
      ],
    );
  }
}
