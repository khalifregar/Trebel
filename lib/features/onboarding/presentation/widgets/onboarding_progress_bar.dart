import 'package:flutter/material.dart';
import 'package:trebel/core/extensions/size_extensions.dart';

class OnboardingProgressBar extends StatefulWidget {
  final int currentIndex;
  final int total;
  final VoidCallback onNext;
  final VoidCallback onBack;
  final VoidCallback? onPause;
  final VoidCallback? onResume;
  final ValueChanged<int>? onIndexChanged;

  const OnboardingProgressBar({
    super.key,
    required this.currentIndex,
    required this.total,
    required this.onNext,
    required this.onBack,
    this.onPause,
    this.onResume,
    this.onIndexChanged,
  });

  @override
  State<OnboardingProgressBar> createState() => OnboardingProgressBarState();
}

class OnboardingProgressBarState extends State<OnboardingProgressBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _initController();
  }

  void _initController() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 8),
    )..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          widget.onNext();
        }
      });

    _controller.forward();
  }

  void _restart() {
    _controller.reset();
    _controller.forward();
  }

  void pause() {
    _controller.stop();
    widget.onPause?.call();
  }

  void resume() {
    _controller.forward();
    widget.onResume?.call();
  }

  @override
  void didUpdateWidget(covariant OnboardingProgressBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.currentIndex != oldWidget.currentIndex) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        widget.onIndexChanged?.call(widget.currentIndex);
      });
      _restart();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(top: 48.height, left: 24.width, right: 24.width),
        child: Row(
          children: List.generate(widget.total, (index) {
            return Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.width),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(2.radius),
                  child: index == widget.currentIndex
                      ? AnimatedBuilder(
                          animation: _controller,
                          builder: (context, child) {
                            return LinearProgressIndicator(
                              value: _controller.value,
                              backgroundColor: Colors.white30,
                              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                              minHeight: 4.height,
                            );
                          },
                        )
                      : LinearProgressIndicator(
                          value: index < widget.currentIndex ? 1 : 0,
                          backgroundColor: Colors.white30,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                          minHeight: 4.height,
                        ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
