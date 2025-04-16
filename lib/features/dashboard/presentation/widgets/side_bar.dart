import 'package:flutter/material.dart';

class SidebarMenu extends StatelessWidget {
  const SidebarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      child: const Center(
        child: Text(
          'Hello from Sidebar 👋',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
