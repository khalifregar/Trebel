import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trebel/features/dashboard/presentation/widgets/dashboard/greeting_header.dart'; // ✅ Import greeting header

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const GreetingHeader(), // ✅ Ganti dengan widget greeting terpisah
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_none, color: Colors.white),
              ),
              SizedBox(width: 8.w),
              GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: CircleAvatar(
                  radius: 16.r,
                  backgroundImage:
                      const AssetImage('assets/images/onboarding_2.jpeg'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
