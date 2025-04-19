import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:trebel/features/dashboard/presentation/pages/trebel_search_page/trebel_search_page.dart';
import 'package:trebel/features/dashboard/presentation/widgets/add_trebel_popup.dart';
import 'package:trebel/features/dashboard/presentation/widgets/custom_spotify_nav.dart';
import 'package:trebel/features/dashboard/presentation/widgets/dashboard_filter_buttons.dart';
import 'package:trebel/features/dashboard/presentation/widgets/discover_more_section.dart';
import 'package:trebel/features/dashboard/presentation/widgets/playlist_card.dart';
import 'package:trebel/features/dashboard/presentation/widgets/recommended_card.dart';
import 'package:trebel/features/dashboard/presentation/widgets/sticky_filter_header_delegate.dart';
import 'package:trebel/features/auth/presentation/bloc/user_auth/user_auth_bloc.dart';
import 'package:trebel/features/onboarding/presentation/pages/onboarding_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Jangan create ulang UserAuthBloc di sini!
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
        drawer: Drawer(
          backgroundColor: const Color(0xFF1A1A1A),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
DrawerHeader(
  decoration: const BoxDecoration(color: Colors.deepPurple),
  child: BlocBuilder<UserAuthBloc, UserAuthState>(
    buildWhen: (previous, current) => current is UserAuthSuccess || current is UserAuthInitial,
    builder: (context, state) {
      if (state is UserAuthSuccess) {
        final email = state.user.email ?? 'User';
        return Text(
          'Hello, $email 👋',
          style: TextStyle(color: Colors.white, fontSize: 20.sp),
        );
      } else {
        return const Center(
          child: CircularProgressIndicator(color: Colors.white),
        );
      }
    },
  ),
),


              ListTile(
                leading: const Icon(Icons.person, color: Colors.white),
                title: const Text('Profile', style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.settings, color: Colors.white),
                title: const Text('Settings', style: TextStyle(color: Colors.white)),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.logout, color: Colors.white),
                title: const Text('Logout', style: TextStyle(color: Colors.white)),
                onTap: () {
                  context.read<UserAuthBloc>().add(const UserAuthEvent.logoutRequested());
                },
              ),
            ],
          ),
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
                      child: Row(
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
                                onPressed: () {},
                                icon: const Icon(Icons.notifications_none, color: Colors.white),
                              ),
                              SizedBox(width: 12.w),
                              Builder(
                                builder: (drawerContext) => GestureDetector(
                                  onTap: () {
                                    Scaffold.of(drawerContext).openDrawer();
                                  },
                                  child: CircleAvatar(
                                    radius: 16.r,
                                    backgroundImage: const AssetImage('assets/images/onboarding_2.jpeg'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
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
                          description: 'Playlist music that accompanies\nyou on the way home',
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
                    MaterialPageRoute(builder: (context) => const TrebelSearchPage()),
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
