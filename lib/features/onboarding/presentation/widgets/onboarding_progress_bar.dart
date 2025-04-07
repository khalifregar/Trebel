import 'package:flutter/material.dart';
import 'package:trebel/core/extensions/size_extensions.dart';

class OnboardingProgressBar extends StatelessWidget {
  const OnboardingProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(top: 48.height, left: 24.width, right: 24.width),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(3, (index) {
            return Expanded(
              child: Container(
                height: 4.height,
                margin: EdgeInsets.symmetric(horizontal: 4.width),
                decoration: BoxDecoration(
                  color: index == 0 ? Colors.white : Colors.white30,
                  borderRadius: BorderRadius.circular(2.radius),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
