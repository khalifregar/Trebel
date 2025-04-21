import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trebel/core/common/constant/preference_constants.dart';
import 'package:trebel/core/common/helpers/preference_helper.dart';
import 'package:trebel/features/auth/presentation/bloc/user_auth/user_auth_bloc.dart';
import 'package:trebel/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:trebel/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:trebel/features/splash_screen/presentation/widgets/splash_logo_widget.dart';
import 'package:trebel/features/splash_screen/presentation/widgets/splash_text_widget.dart';
import 'package:trebel/locator.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage>
    with SingleTickerProviderStateMixin {
  late final UserAuthBloc _bloc;
  late final AnimationController _controller;
  late final Animation<double> _fadeAnimation;
  late final Animation<double> _scaleAnimation;
  late final Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _bloc = locator<UserAuthBloc>();

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

    _checkTokenAndFetch();
  }

  Future<void> _checkTokenAndFetch() async {
    final token = await getStringValuePreference(key: PreferenceConstants.token);

    if (token != null && token.isNotEmpty) {
      debugPrint('🟢 Token ditemukan, fetching getMe()...');
      _bloc.add(const UserAuthEvent.getMeRequested());
    } else {
      debugPrint('🔴 Token kosong, redirect ke onboarding');
      _navigateTo(const OnboardingPage());
    }
  }

  void _navigateTo(Widget page) {
    Future.delayed(const Duration(milliseconds: 1500), () {
      if (context.mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => page),
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: BlocListener<UserAuthBloc, UserAuthState>(
        listener: (context, state) async {
          await state.whenOrNull(
            success: (_) => _navigateTo(const DashboardPage()),
            failure: (_) async {
              await removeValuePreference(key: PreferenceConstants.token);
              _navigateTo(const OnboardingPage());
            },
          );
        },
        child: Scaffold(
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
        ),
      ),
    );
  }
}
