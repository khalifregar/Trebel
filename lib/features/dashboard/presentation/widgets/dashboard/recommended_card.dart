import 'package:flutter/material.dart';
import 'package:trebel/core/extensions/size_extensions.dart';
import 'package:google_fonts/google_fonts.dart';

class RecommendedCard extends StatelessWidget {
  final String imagePath;
  final String description;

  const RecommendedCard({
    super.key,
    required this.imagePath,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.height,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Card 2 - Background teks
          Positioned(
            left: 40.width,
            right: 0,
            child: Container(
              height: 80.height,
              padding: EdgeInsets.only(left: 50.width, right: 16.width),
              decoration: BoxDecoration(
                color: const Color(0xFF2C2F48), // 🎨 Warna lebih kalem
                borderRadius: BorderRadius.circular(12.radius),
              ),
              alignment: Alignment.centerLeft,
              child: Text(
                description,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 12.spFont,
                  fontWeight: FontWeight.w500,
                  height: 1.3,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),

          // Card 1 - Gambar
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: Container(
              width: 80.height,
              height: 80.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.radius),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
