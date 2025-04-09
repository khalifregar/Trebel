import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:trebel/core/extensions/size_extensions.dart';
import 'package:trebel/features/onboarding/presentation/widgets/onboarding_buttons.dart';
import 'package:trebel/features/onboarding/presentation/widgets/onboarding_progress_bar.dart';
import 'package:trebel/features/onboarding/presentation/widgets/onboarding_text_content.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int _currentIndex = 0;
  final GlobalKey<OnboardingProgressBarState> _progressKey = GlobalKey();

  Timer? _pressTimer;
  bool _isLongPress = false;
  double _lastTapX = 0;

  final List<String> backgroundImages = [
    'assets/images/onboarding.jpg',
    'assets/images/onboarding_2.jpeg',
    'assets/images/onboarding_3.jpeg',
  ];

  void _next() {
    if (_currentIndex < 2) {
      setState(() => _currentIndex++);
    }
  }

  void _prev() {
    if (_currentIndex > 0) {
      setState(() => _currentIndex--);
    }
  }

  void _onIndexChanged(int index) {
    setState(() => _currentIndex = index);
  }

  void _handleGestureStart(DragDownDetails details) {
    _lastTapX = details.globalPosition.dx;
    _isLongPress = false;

    _pressTimer = Timer(const Duration(milliseconds: 500), () {
      _isLongPress = true;
      _progressKey.currentState?.pause();
    });
  }

  void _handleGestureEnd() {
    _pressTimer?.cancel();

    if (_isLongPress) {
      _progressKey.currentState?.resume();
    } else {
      final width = MediaQuery.of(context).size.width;
      if (_lastTapX < width / 2) {
        _prev();
      } else {
        _next();
      }
    }
  }

  void _handleGestureCancel() {
    _pressTimer?.cancel();
    _progressKey.currentState?.resume();
  }

  @override
  void dispose() {
    _pressTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    final titles = [
      localizations.slide1Title,
      localizations.slide2Title,
      localizations.slide3Title,
    ];

    final subtitles = [
      localizations.slide1Subtitle,
      localizations.slide2Subtitle,
      localizations.slide3Subtitle,
    ];

    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onPanDown: _handleGestureStart,
        onPanEnd: (_) => _handleGestureEnd(),
        onPanCancel: _handleGestureCancel,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              backgroundImages[_currentIndex],
              fit: BoxFit.cover,
            ),
            Container(color: const Color(0xFF222831).withOpacity(0.75)),
            OnboardingProgressBar(
              key: _progressKey,
              currentIndex: _currentIndex,
              total: titles.length,
              onNext: _next,
              onBack: _prev,
              onPause: () {},
              onResume: () {},
              onIndexChanged: _onIndexChanged,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.width),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OnboardingTextContent(
                    title: titles[_currentIndex],
                    subtitle: subtitles[_currentIndex],
                  ),
                  const SizedBox(height: 32),
                  const OnboardingButtons(),
                  SizedBox(height: 10.height),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
