import 'package:flutter/material.dart';
import 'package:trebel/core/constants/text_constants.dart';
import 'package:trebel/core/extensions/size_extensions.dart';

class SplashTextWidget extends StatelessWidget {
  final Animation<Offset> slideAnimation;
  final Animation<double> fadeAnimation;

  const SplashTextWidget({
    super.key,
    required this.slideAnimation,
    required this.fadeAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: fadeAnimation,
      child: SlideTransition(
        position: slideAnimation,
        child: Text(
          TextConstants.appTitle,
          style: TextStyle(
            color: const Color(0xFF00BF63),
            fontSize: 22.spFont,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
      ),
    );
  }
}
