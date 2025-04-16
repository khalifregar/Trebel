import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trebel/features/music_page/presentation/widgets/fullscreen_lyrics_dialog.dart';

class LyricCardWidget extends StatelessWidget {
  final String lyrics;

  const LyricCardWidget({super.key, required this.lyrics});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: const Color(0xFF87CEEB),
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Stack(
          children: [
            // Scrollable lyrics text
            Positioned.fill(
              child: ShaderMask(
                shaderCallback: (bounds) {
                  return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0.1),
                      Colors.black,
                      Colors.black,
                      Colors.black.withOpacity(0.1),
                    ],
                    stops: const [0.0, 0.2, 0.8, 1.0],
                  ).createShader(bounds);
                },
                blendMode: BlendMode.dstIn,
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(top: 32.h, bottom: 32.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: lyrics
                        .split('\n')
                        .map(
                          (line) => Padding(
                            padding: EdgeInsets.symmetric(vertical: 4.h),
                            child: Text(
                              line,
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ),

            // Header: Lirik label dan icon
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Lirik',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.share, color: Colors.white, size: 18),
                        SizedBox(width: 12.w),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              barrierColor: Colors.black87.withOpacity(0.8),
                              builder: (_) =>
                                  FullscreenLyricsDialog(lyrics: lyrics),
                            );
                          },
                          child: Icon(Icons.fullscreen,
                              color: Colors.white, size: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
