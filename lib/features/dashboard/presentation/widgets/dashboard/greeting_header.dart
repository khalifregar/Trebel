import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:trebel/features/auth/presentation/bloc/user_auth/user_auth_bloc.dart';

class GreetingHeader extends StatelessWidget {
  const GreetingHeader({super.key});

  String _getGreeting(BuildContext context) {
    final hour = DateTime.now().hour;
    final locale = AppLocalizations.of(context)!;

    if (hour >= 5 && hour < 12) return locale.greetingMorning;
    if (hour >= 12 && hour < 17) return locale.greetingAfternoon;
    if (hour >= 17 && hour < 20) return locale.greetingEvening;
    return locale.greetingNight;
  }

  String _getTimeBasedEmoji() {
    final hour = DateTime.now().hour;
    final emojis = {
      'morning': ['☀️', '🌞', '🎶', '🥐'],
      'afternoon': ['🌤', '🍵', '🎧', '😎'],
      'evening': ['🌇', '🌆', '🎷', '🧘‍♂️'],
      'night': ['🌙', '💤', '🔥', '📻'],
    };

    if (hour >= 5 && hour < 12) return emojis['morning']!.random();
    if (hour >= 12 && hour < 17) return emojis['afternoon']!.random();
    if (hour >= 17 && hour < 20) return emojis['evening']!.random();
    return emojis['night']!.random();
  }

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    final greeting = _getGreeting(context);
    final emoji = _getTimeBasedEmoji();

    return BlocBuilder<UserAuthBloc, UserAuthState>(
      builder: (context, state) {
        String nameDisplay;

        if (state is UserAuthSuccess) {
          nameDisplay = state.user.userName ??
              state.user.email ??
              locale.defaultDisplayName;
        } else {
          nameDisplay = 'Loading...';
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              greeting,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              '$nameDisplay $emoji',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        );
      },
    );
  }
}

extension<T> on List<T> {
  T random() => this[Random().nextInt(length)];
}
