import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:trebel/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:trebel/features/dashboard/presentation/widgets/side_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuScreen: const SidebarMenu(),
      mainScreen: const DashboardPage(),
      borderRadius: 24.0,
      showShadow: true,
      angle: 0.0,
      menuBackgroundColor: Colors.black87,
      slideWidth: MediaQuery.of(context).size.width * 0.65,
    );
  }
}
