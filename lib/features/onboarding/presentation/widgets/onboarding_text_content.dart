import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trebel/core/constants/text_constants.dart';
import 'package:trebel/core/extensions/size_extensions.dart';

class OnboardingTextContent extends StatelessWidget {
  const OnboardingTextContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          TextConstants.onboardingSubtitle,
          style: GoogleFonts.poppins(
            fontSize: 12.spFont,
            color: Colors.white70,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.2,
          ),
        ),
        SizedBox(height: 8.height),
        RichText(
          text: TextSpan(
            style: GoogleFonts.poppins(
              fontSize: 28.spFont,
              fontWeight: FontWeight.bold,
              height: 1.2.height,
            ),
            children: [
              TextSpan(
                text: TextConstants.onboardingTitle,
                style: const TextStyle(color: Colors.white),
              ),
              const TextSpan(
                text: 'Trebel.',
                style: TextStyle(color: Color(0xFF00BF63)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
