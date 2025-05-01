import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/onboarding_2.jpeg'),
            ),
            const SizedBox(height: 12),
            const Text(
              'Alex Music',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Music lover and songwriter',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                _StatItem(count: '150', label: 'Songs'),
                _StatItem(count: '4', label: 'Playlists'),
                _StatItem(count: '32h', label: 'Listening'),
              ],
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: const BorderSide(color: Colors.white),
                ),
                onPressed: () {
                  // Navigate to edit profile page
                },
                child: const Text('Edit Profile'),
              ),
            ),
            const SizedBox(height: 30),
            const _SectionItem(
              icon: Icons.headphones,
              title: 'Favorite Genres',
              subtitle: 'Pop • Rock • Jazz',
            ),
            const Divider(color: Colors.grey),
            const _SectionItem(
              icon: Icons.library_music,
              title: 'My Playlists',
              hasArrow: true,
            ),
            const Divider(color: Colors.grey),
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
        Text(
          count,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 13,
          ),
        ),
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
      leading: Icon(icon, color: Colors.white),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle!,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 13,
              ),
            )
          : null,
      trailing: hasArrow ? const Icon(Icons.chevron_right, color: Colors.white) : null,
      onTap: () {
        // Implement onTap action if needed
      },
    );
  }
}
