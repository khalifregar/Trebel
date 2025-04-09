import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaylistCard extends StatelessWidget {
  final String imagePath;
  final String title;

  const PlaylistCard({
    super.key,
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165.w,
      decoration: BoxDecoration(
        color: const Color(0xFF393E46),
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Row(
        children: [
          // Gambar di kiri
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5.r),
              bottomLeft: Radius.circular(5.r),
            ),
            child: Image.asset(
              imagePath,
              width: 55.w,
              height: 72.h,
              fit: BoxFit.cover,
            ),
          ),

          // Text di kanan
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w),
              child: Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                  height: 1.3,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
