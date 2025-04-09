import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trebel/core/extensions/size_extensions.dart';
import 'package:trebel/features/dashboard/presentation/widgets/dashboard_filter_buttons.dart';
import 'package:trebel/features/dashboard/presentation/widgets/dashboard_header.dart';
import 'package:trebel/features/dashboard/presentation/widgets/discover_more_section.dart';
import 'package:trebel/features/dashboard/presentation/widgets/playlist_card.dart';
import 'package:trebel/features/dashboard/presentation/widgets/recommended_card.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  String _selectedFilter = 'All';
  final List<String> filters = ['All', 'Music', 'Podcast'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF222831),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header: Greeting + icons
                const DashboardHeader(),
                SizedBox(height: 24.h),

                // Filter: All / Music / Podcast
                DashboardFilterButtons(
                  filters: filters,
                  selectedFilter: _selectedFilter,
                  onFilterSelected: (filter) {
                    setState(() => _selectedFilter = filter);
                  },
                ),
                SizedBox(height: 24.h),

                // Horizontal Playlist Cards
                SizedBox(
                  height: 72.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(right: 16.w),
                    children: const [
                      PlaylistCard(
                        imagePath: 'assets/images/onboarding.jpg',
                        title: 'Japanese Street\nPop 00\'',
                      ),
                      SizedBox(width: 12),
                      PlaylistCard(
                        imagePath: 'assets/images/onboarding.jpg',
                        title: 'Throwback Rock\nMusic 90\'',
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 24.h),

                // Recommended Card
                const RecommendedCard(
                  imagePath: 'assets/images/onboarding.jpg',
                  description: 'Playlist music that accompanies\nyou on the way home',
                ),

                SizedBox(height: 24.h),

                // Discover More Section
                const DiscoverMoreSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
