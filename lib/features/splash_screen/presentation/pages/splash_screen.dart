import 'package:flutter/material.dart';
import 'package:trebel/core/extensions/size_extensions.dart';
import 'package:trebel/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:trebel/features/splash_screen/presentation/widgets/splash_logo_widget.dart';
import 'package:trebel/features/splash_screen/presentation/widgets/splash_text_widget.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage>
    with TickerProviderStateMixin {
  late AnimationController _imageController;
  late AnimationController _textController;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;
  Animation<Offset>? _slideTextAnimation;
  Animation<double>? _textFadeAnimation;

  @override
  void initState() {
    super.initState();

    _imageController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _textController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _imageController,
        curve: Curves.easeInOut,
      ),
    );

    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(
        parent: _imageController,
        curve: Curves.easeOutBack,
      ),
    );

    _slideTextAnimation = Tween<Offset>(
      begin: const Offset(0, -0.5),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _textController,
        curve: Curves.easeOut,
      ),
    );

    _textFadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _textController,
        curve: Curves.easeIn,
      ),
    );

    _imageController.forward().whenComplete(() {
      _textController.forward().whenComplete(() {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const OnboardingPage(),
          ),
        );
      });
    });
  }

  @override
  void dispose() {
    _imageController.dispose();
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF222831),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SplashLogoWidget(
              fadeAnimation: _fadeAnimation,
              scaleAnimation: _scaleAnimation,
            ),
            SizedBox(height: 24.height),
            if (_slideTextAnimation != null && _textFadeAnimation != null)
              SplashTextWidget(
                slideAnimation: _slideTextAnimation!,
                fadeAnimation: _textFadeAnimation!,
              ),
          ],
        ),
      ),
    );
  }
}
