import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
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
          child: Text(
            'Hello, User 👋', // Static dulu, nanti bisa inject name/email
            style: TextStyle(color: Colors.white, fontSize: 20.sp),
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
          onTap: () {
            // TODO: Tambahkan navigasi settings kalau sudah ada
          },
        ),
        ListTile(
          leading: const Icon(Icons.logout, color: Colors.white),
          title: const Text('Logout', style: TextStyle(color: Colors.white)),
          onTap: () {
            // TODO: Implementasi logout manual di sini
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Logout berhasil! (dummy)')),
            );
            context.go('/login'); // Atau pakai pushReplacement tergantung router kamu
          },
        ),
      ],
    );
  }
}
