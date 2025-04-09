import 'package:flutter/material.dart';
import 'package:trebel/core/extensions/size_extensions.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscoverMusicCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String artist;

  const DiscoverMusicCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.artist,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Cover Image
          ClipRRect(
            borderRadius: BorderRadius.circular(6.radius),
            child: Image.asset(
              imagePath,
              width: 140.width,
              height: 140.width,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8.height),

          // Title
          Text(
            title,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 14.spFont,
              fontWeight: FontWeight.w600,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),

          // Artist
          Text(
            artist,
            style: GoogleFonts.poppins(
              color: Colors.white60,
              fontSize: 11.spFont,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
