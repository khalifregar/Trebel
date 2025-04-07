import 'package:flutter/material.dart';
import 'package:trebel/core/constants/image_constants.dart';
import 'package:trebel/core/extensions/size_extensions.dart';

class SplashLogoWidget extends StatelessWidget {
  final Animation<double> fadeAnimation;
  final Animation<double> scaleAnimation;

  const SplashLogoWidget({
    super.key,
    required this.fadeAnimation,
    required this.scaleAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: fadeAnimation,
      child: ScaleTransition(
        scale: scaleAnimation,
        child: SizedBox(
          width: 180.width,
          height: 180.height,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100.radius),
            child: Image.asset(
              ImageConstants.splashLogo,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey.shade800,
                  child: const Center(
                    child: Icon(Icons.warning_amber, color: Colors.red, size: 48),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
