import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trebel/features/music_page/presentation/widgets/lyric_card_widget.dart';

class OpenMusicPage extends StatelessWidget {
  final String imagePath;
  final String songTitle;
  final String artistName;
  final String lyrics;

  const OpenMusicPage({
    super.key,
    required this.imagePath,
    required this.songTitle,
    required this.artistName,
    required this.lyrics,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.white),
        actions: const [
          Icon(Icons.more_vert, color: Colors.white),
          SizedBox(width: 16),
        ],
      ),
      body: Stack(
        children: [
          /// 🔥 Satu warna ambient background (blue sky effect)
          Positioned.fill(
            child: Container(
              color: const Color(0xFF87CEEB).withOpacity(0.2), // Sky Blue soft
            ),
          ),

          /// Konten utama
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                SizedBox(height: 80.h),

                /// Cover Image
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF87CEEB).withOpacity(0.3),
                        blurRadius: 180,
                        spreadRadius: 80,
                        offset: const Offset(0, 40),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.r),
                    child: Image.asset(
                      imagePath,
                      width: 250.w,
                      height: 250.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                SizedBox(height: 32.h),

                /// Title & Artist
                Text(
                  songTitle,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8.h),
                Text(
                  artistName,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.white70,
                  ),
                ),

                SizedBox(height: 24.h),

                /// Slider
                Column(
                  children: [
                    Slider(
                      value: 40,
                      max: 270,
                      onChanged: (_) {},
                      activeColor: Colors.white,
                      inactiveColor: Colors.white24,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("0:40", style: TextStyle(color: Colors.white70)),
                          Text("4:30", style: TextStyle(color: Colors.white70)),
                        ],
                      ),
                    )
                  ],
                ),

                SizedBox(height: 24.h),

                /// Controls
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.shuffle, color: Colors.white),
                    Icon(Icons.skip_previous_rounded,
                        color: Colors.white, size: 40),
                    Icon(Icons.play_circle_fill, color: Colors.white, size: 64),
                    Icon(Icons.skip_next_rounded,
                        color: Colors.white, size: 40),
                    Icon(Icons.repeat, color: Colors.white),
                  ],
                ),

                SizedBox(height: 24.h),

                /// Lyrics Box (lebar & tinggi optimal)
                Expanded(
                  child: LyricCardWidget(lyrics: lyrics),
                ),

                SizedBox(height: 24.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
