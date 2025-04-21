import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            const SizedBox(height: 12),
            const Text(
              'Alex Music',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              'Music lover and songwriter',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                _StatItem(count: '150', label: 'Songs'),
                _StatItem(count: '4', label: 'Playlists'),
                _StatItem(count: '32h', label: 'Listening'),
              ],
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                // Navigate to edit profile page
              },
              child: const Text('Edit Profile'),
            ),
            const SizedBox(height: 20),
            const _SectionItem(
              icon: Icons.headphones,
              title: 'Favorite Genres',
              subtitle: 'Pop • Rock • Jazz',
            ),
            const _SectionItem(
              icon: Icons.library_music,
              title: 'My Playlists',
              hasArrow: true,
            ),
            const _SectionItem(
              icon: Icons.logout,
              title: 'Logout',
            ),
          ],
        ),
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String count;
  final String label;

  const _StatItem({required this.count, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(count,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}

class _SectionItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final bool hasArrow;

  const _SectionItem({
    required this.icon,
    required this.title,
    this.subtitle,
    this.hasArrow = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 4),
      leading: Icon(icon, color: Colors.black),
      title: Text(title, style: const TextStyle(fontSize: 16)),
      subtitle: subtitle != null
          ? Text(subtitle!, style: const TextStyle(color: Colors.grey))
          : null,
      trailing: hasArrow ? const Icon(Icons.chevron_right) : null,
      onTap: () {},
    );
  }
}
