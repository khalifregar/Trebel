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
    debugPrint('📤 Token dari preferences: $token');

    if (token != null && token.isNotEmpty) {
      debugPrint('✅ Token ditemukan, memanggil getMe...');
      _bloc.add(const UserAuthEvent.getMeRequested());
    } else {
      debugPrint('❌ Token kosong, pindah ke onboarding...');
      Future.delayed(const Duration(seconds: 2), () {
        if (context.mounted) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => const OnboardingPage()),
          );
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: BlocListener<UserAuthBloc, UserAuthState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (_) {
              debugPrint('✅ getMe sukses → ke Dashboard');
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => const DashboardPage()),
              );
            },
            failure: (message) {
              debugPrint('❌ getMe gagal ($message) → ke Onboarding');
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => const OnboardingPage()),
              );
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
