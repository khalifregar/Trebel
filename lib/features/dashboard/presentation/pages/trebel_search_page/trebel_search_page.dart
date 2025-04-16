import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart'; // ✅ Tambahkan ini
import 'package:trebel/features/dashboard/presentation/widgets/trebel_search_page/most_searched_title.dart';
import 'package:trebel/features/dashboard/presentation/widgets/trebel_search_page/podcast_card_grid.dart';
import 'package:trebel/features/dashboard/presentation/widgets/trebel_search_page/video_list_view.dart';
import 'package:trebel/features/dashboard/presentation/widgets/trebel_search_page/video_section_title.dart';

class TrebelSearchPage extends StatefulWidget {
  const TrebelSearchPage({super.key});

  @override
  State<TrebelSearchPage> createState() => _TrebelSearchPageState();
}

class _TrebelSearchPageState extends State<TrebelSearchPage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Widget _buildSearchBar() {
    final localizations = AppLocalizations.of(context)!;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: TextField(
          controller: _searchController,
          style: TextStyle(fontSize: 14.sp),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
            hintText: localizations.searchHint, // ✅ Gunakan teks dari lokal
            hintStyle: TextStyle(color: Colors.grey[600]),
            border: InputBorder.none,
            suffixIcon: Icon(Icons.search, color: Colors.grey[600]),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF222831),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15.h),
              _buildSearchBar(),
              const MostSearchedTitle(),
              const PodcastCardGrid(),
              const VideoSectionTitle(),
              SizedBox(height: 16.h),
              const VideoListView(),
              SizedBox(height: 32.h),
            ],
          ),
        ),
      ),
    );
  }
}
