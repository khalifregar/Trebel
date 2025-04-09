import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trebel/core/extensions/size_extensions.dart';
import 'package:trebel/features/dashboard/presentation/widgets/discover_musi.dart';

class DiscoverMoreSection extends StatelessWidget {
  const DiscoverMoreSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title & See all
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Discover more',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 18.spFont,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'See all',
                style: GoogleFonts.poppins(
                  color: Colors.white70,
                  fontSize: 12.spFont,
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 12.height),

        // Music Card Horizontal Scroll
        SizedBox(
          height: 200.height,
          child: ListView.separated(
            clipBehavior: Clip.none, // biar ujung kanan gak ke-cut
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(right: 16.width),
            itemCount: 6,
            separatorBuilder: (_, __) => SizedBox(width: 14.width),
            itemBuilder: (_, index) {
              return DiscoverMusicCard(
                imagePath: 'assets/images/onboarding.jpg',
                title: 'Lofi Chill ${index + 1}',
                artist: 'Artist ${index + 1}',
              );
            },
          ),
        )
      ],
    );
  }
}
