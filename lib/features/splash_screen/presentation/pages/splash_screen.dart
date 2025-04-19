import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trebel/core/common/constant/preference_constants.dart';
import 'package:trebel/core/common/helpers/preference_helper.dart';
import 'package:trebel/features/auth/presentation/bloc/user_auth/user_auth_bloc.dart';
import 'package:trebel/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:trebel/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:trebel/locator.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  late final UserAuthBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = locator<UserAuthBloc>();
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
        child: const Scaffold(
          backgroundColor: Color(0xFF222831),
          body: Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
