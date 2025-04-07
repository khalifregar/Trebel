import 'package:flutter/material.dart';
import 'package:trebel/core/extensions/size_extensions.dart';
import 'package:trebel/features/onboarding/presentation/widgets/onboarding_progress_bar.dart';
import 'package:trebel/features/onboarding/presentation/widgets/onboarding_text_content.dart';
import 'package:trebel/features/onboarding/presentation/widgets/onboarding_buttons.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image full screen
          Image.asset(
            'assets/images/onboarding.jpg',
            fit: BoxFit.cover,
          ),

          // Overlay shadow dark
          Container(color: const Color(0xFF222831).withOpacity(0.75)),

          // IG Story-style progress bars
          const OnboardingProgressBar(),

          // Content
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.width),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                OnboardingTextContent(),
                SizedBox(height: 32),
                OnboardingButtons(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
