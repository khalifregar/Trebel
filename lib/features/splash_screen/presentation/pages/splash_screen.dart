import 'package:flutter/material.dart';
import 'package:trebel/core/common/constant/preference_constants.dart';
import 'package:trebel/core/common/helpers/preference_helper.dart';
import 'package:trebel/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:trebel/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:trebel/features/splash_screen/presentation/widgets/splash_logo_widget.dart';
import 'package:trebel/features/splash_screen/presentation/widgets/splash_text_widget.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _fadeAnimation;
  late final Animation<double> _scaleAnimation;
  late final Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    _scaleAnimation = Tween<double>(begin: 0.8, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOutBack),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    _controller.forward();

    _checkTokenAndNavigate();
  }

  Future<void> _checkTokenAndNavigate() async {
    final token = await getStringValuePreference(key: PreferenceConstants.token);

    await Future.delayed(const Duration(milliseconds: 1500));

    if (!mounted) return;

    if (token != null && token.isNotEmpty) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const DashboardPage()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const OnboardingPage()),
      );
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF222831),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SplashLogoWidget(
              fadeAnimation: _fadeAnimation,
              scaleAnimation: _scaleAnimation,
            ),
            const SizedBox(height: 16),
            SplashTextWidget(
              slideAnimation: _slideAnimation,
              fadeAnimation: _fadeAnimation,
            ),
            const SizedBox(height: 32),
            const CircularProgressIndicator(color: Colors.white),
          ],
        ),
      ),
    );
  }
}
