import 'package:boxy/boxy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trebel/features/dashboard/presentation/pages/trebel_search_page/trebel_search_page.dart';

import 'package:trebel/features/dashboard/presentation/widgets/dashboard/add_trebel_popup.dart';
import 'package:trebel/features/dashboard/presentation/widgets/dashboard/custom_spotify_nav.dart';
import 'package:trebel/features/dashboard/presentation/widgets/dashboard/dashboard_filter_buttons.dart';
import 'package:trebel/features/dashboard/presentation/widgets/dashboard/dashboard_header.dart';
import 'package:trebel/features/dashboard/presentation/widgets/dashboard/discover_more_section.dart';
import 'package:trebel/features/dashboard/presentation/widgets/dashboard/greeting_header.dart';
import 'package:trebel/features/dashboard/presentation/widgets/dashboard/playlist_card.dart';
import 'package:trebel/features/dashboard/presentation/widgets/dashboard/recommended_card.dart';
import 'package:trebel/features/dashboard/presentation/widgets/dashboard/sticky_filter_header_delegate.dart';
import 'package:trebel/features/auth/presentation/bloc/user_auth/user_auth_bloc.dart';
import 'package:trebel/features/dashboard/presentation/widgets/dashboard/user_drawer_header.dart';
import 'package:trebel/features/onboarding/presentation/pages/onboarding_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _DashboardContent();
  }
}

class _DashboardContent extends StatefulWidget {
  const _DashboardContent({super.key});

  @override
  State<_DashboardContent> createState() => _DashboardContentState();
}

class _DashboardContentState extends State<_DashboardContent> {
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
    return BlocListener<UserAuthBloc, UserAuthState>(
      listenWhen: (prev, curr) => curr is UserAuthLoggedOut,
      listener: (context, state) {
        if (state is UserAuthLoggedOut) {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (_) => const OnboardingPage()),
            (route) => false,
          );
        }
      },
      child: Scaffold(
        backgroundColor: const Color(0xFF222831),
        extendBody: true,
        drawer: const Drawer(
          backgroundColor: Color(0xFF1A1A1A),
          child: UserDrawerSection(),
        ),
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
                      child: const DashboardHeader(), // ← BOXIFIED
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 16.w).copyWith(
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
                        builder: (context) => const TrebelSearchPage()),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlaylistSection() {
    final playlists = {
      'Music': [
        const PlaylistCard(
          imagePath: 'assets/images/onboarding.jpg',
          title: 'Lo-fi Chill Beats',
        ),
        const PlaylistCard(
          imagePath: 'assets/images/onboarding.jpg',
          title: 'Indie Rock Anthems',
        ),
      ],
      'Podcast': [
        const PlaylistCard(
          imagePath: 'assets/images/onboarding.jpg',
          title: 'Tech Talk Weekly',
        ),
        const PlaylistCard(
          imagePath: 'assets/images/onboarding.jpg',
          title: 'Mindfulness Hour',
        ),
      ],
      'All': [
        const PlaylistCard(
          imagePath: 'assets/images/onboarding.jpg',
          title: 'Japanese Street\nPop 00\'',
        ),
        const PlaylistCard(
          imagePath: 'assets/images/onboarding.jpg',
          title: 'Throwback Rock\nMusic 90\'',
        ),
      ],
    };

    return Wrap(
      spacing: 12.w,
      runSpacing: 12.h,
      children: playlists[_selectedFilter]!,
    );
  }
}
