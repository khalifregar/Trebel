import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trebel/features/dashboard/presentation/pages/trebel_search_page/trebel_search_page.dart';
import 'package:trebel/features/dashboard/presentation/widgets/add_trebel_popup.dart';
import 'package:trebel/features/dashboard/presentation/widgets/custom_spotify_nav.dart';
import 'package:trebel/features/dashboard/presentation/widgets/dashboard_filter_buttons.dart';
import 'package:trebel/features/dashboard/presentation/widgets/dashboard_header.dart';
import 'package:trebel/features/dashboard/presentation/widgets/discover_more_section.dart';
import 'package:trebel/features/dashboard/presentation/widgets/playlist_card.dart';
import 'package:trebel/features/dashboard/presentation/widgets/recommended_card.dart';
import 'package:trebel/features/dashboard/presentation/widgets/sticky_filter_header_delegate.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  String _selectedFilter = 'All';
  final List<String> filters = ['All', 'Music', 'Podcast'];
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      AddsTrebelPopup.show(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: const Color(0xFF1A1A1A),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.deepPurple),
              child: Text(
                'Hello, Lif 👋',
                style: TextStyle(color: Colors.white, fontSize: 20.sp),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person, color: Colors.white),
              title:
                  const Text('Profile', style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.white),
              title:
                  const Text('Settings', style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.white),
              title:
                  const Text('Logout', style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFF222831),
      extendBody: true,
      body: Stack(
        children: [
          SafeArea(
            top: true,
            bottom: false,
            child: CustomScrollView(
              physics: const ClampingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(16.w, 20.h, 16.w, 12.h),
                    child: Builder(
                      builder: (context) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Good morning moods✨',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                },
                                icon: const Icon(Icons.notifications_none,
                                    color: Colors.white),
                              ),
                              SizedBox(width: 12.w),
                              GestureDetector(
                                onTap: () {
                                  Scaffold.of(context).openDrawer();
                                },
                                child: CircleAvatar(
                                  radius: 16.r,
                                  backgroundImage: const AssetImage(
                                      'assets/images/onboarding_2.jpeg'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SliverPersistentHeader(
                  pinned: true,
                  delegate: StickyFilterHeaderDelegate(
                    child: Container(
                      color: const Color(0xFF222831),
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      alignment: Alignment.centerLeft,
                      height: 52.h,
                      child: DashboardFilterButtons(
                        filters: filters,
                        selectedFilter: _selectedFilter,
                        onFilterSelected: (filter) {
                          setState(() => _selectedFilter = filter);
                        },
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(child: SizedBox(height: 24.h)),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: _buildPlaylistSection(),
                  ),
                ),
                SliverToBoxAdapter(child: SizedBox(height: 24.h)),
                if (_selectedFilter != 'Podcast')
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: const RecommendedCard(
                        imagePath: 'assets/images/onboarding.jpg',
                        description:
                            'Playlist music that accompanies\nyou on the way home',
                      ),
                    ),
                  ),
                SliverToBoxAdapter(child: SizedBox(height: 24.h)),
                ...List.generate(
                  2,
                  (index) => SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w).copyWith(
                        bottom: index == 1 ? 100.h : 24.h,
                      ),
                      child: const DiscoverMoreSection(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomSpotifyLikeNav(
            selectedIndex: _selectedIndex,
            onItemTapped: (index) {
              setState(() => _selectedIndex = index);

              if (index == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TrebelSearchPage(),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _buildPlaylistSection() {
    if (_selectedFilter == 'Music') {
      return Wrap(
        spacing: 12.w,
        runSpacing: 12.h,
        children: const [
          PlaylistCard(
            imagePath: 'assets/images/onboarding.jpg',
            title: 'Lo-fi Chill Beats',
          ),
          PlaylistCard(
            imagePath: 'assets/images/onboarding.jpg',
            title: 'Indie Rock Anthems',
          ),
        ],
      );
    } else if (_selectedFilter == 'Podcast') {
      return Wrap(
        spacing: 12.w,
        runSpacing: 12.h,
        children: const [
          PlaylistCard(
            imagePath: 'assets/images/onboarding.jpg',
            title: 'Tech Talk Weekly',
          ),
          PlaylistCard(
            imagePath: 'assets/images/onboarding.jpg',
            title: 'Mindfulness Hour',
          ),
        ],
      );
    }

    return Wrap(
      spacing: 12.w,
      runSpacing: 12.h,
      children: const [
        PlaylistCard(
          imagePath: 'assets/images/onboarding.jpg',
          title: 'Japanese Street\nPop 00\'',
        ),
        PlaylistCard(
          imagePath: 'assets/images/onboarding.jpg',
          title: 'Throwback Rock\nMusic 90\'',
        ),
      ],
    );
  }
}
