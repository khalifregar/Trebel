import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';
import 'package:trebel/features/auth/presentation/bloc/user_auth/user_auth_bloc.dart';
import 'package:trebel/features/profile/profile.dart';

class UserDrawerSection extends StatelessWidget {
  const UserDrawerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: const BoxDecoration(color: Colors.deepPurple),
          child: BlocBuilder<UserAuthBloc, UserAuthState>(
            buildWhen: (previous, current) =>
                current is UserAuthSuccess ||
                current is UserAuthInitial ||
                current is UserAuthLoading,
            builder: (context, state) {
              if (state is UserAuthSuccess) {
                final email = state.user.email ?? 'User';
                return Text(
                  'Hello, $email 👋',
                  style: TextStyle(color: Colors.white, fontSize: 20.sp),
                );
              } else {
                return Shimmer.fromColors(
                  baseColor: Colors.grey.shade600,
                  highlightColor: Colors.grey.shade300,
                  child: Container(
                    width: 180.w,
                    height: 20.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                );
              }
            },
          ),
        ),
        ListTile(
          leading: const Icon(Icons.person, color: Colors.white),
          title: const Text('Profile', style: TextStyle(color: Colors.white)),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ProfileScreen()),
            );
          },
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
            context
                .read<UserAuthBloc>()
                .add(const UserAuthEvent.logoutRequested());
          },
        ),
      ],
    );
  }
}
