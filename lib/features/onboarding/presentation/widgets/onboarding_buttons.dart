import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trebel/core/extensions/size_extensions.dart';
import 'package:trebel/core/constants/text_constants.dart';

class OnboardingButtons extends StatelessWidget {
  const OnboardingButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 50.height,
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: Image.asset(
              'assets/icons/google.png',
              width: 20.width,
              height: 20.height,
            ),
            label: Text(
              TextConstants.continueWithGoogle,
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
        SizedBox(
          width: double.infinity,
          height: 50.height,
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.apple, size: 20.width),
            label: Text(
              TextConstants.continueWithApple,
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
        SizedBox(height: 24.height),
        Center(
          child: RichText(
            text: TextSpan(
              text: TextConstants.newToTrebel,
              style: GoogleFonts.poppins(
                fontSize: 12.spFont,
                color: Colors.white70,
              ),
              children: [
                TextSpan(
                  text: TextConstants.createAccount,
                  style: GoogleFonts.poppins(
                    fontSize: 12.spFont,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
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
