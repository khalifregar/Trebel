import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSpotifyLikeNav extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomSpotifyLikeNav({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: EdgeInsets.only(
          left: 24.w,
          right: 24.w,
          top: 12.h,
          bottom: 12.h + MediaQuery.of(context).viewPadding.bottom,
        ),
        decoration: BoxDecoration(
          color: Colors.transparent,
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF222831).withOpacity(0.75),
              blurRadius: 6,
              offset: const Offset(0, -1),
            ),
          ],
        ),
        child: Row(
          children: [
            _buildIcon(Icons.home_filled, 0),
            const Spacer(),
            _buildIcon(Icons.search, 1),
            const Spacer(),
            _buildIcon(Icons.favorite_border, 2),
            const Spacer(),
            _buildIcon(Icons.person_outline, 3),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(IconData icon, int index) {
    final isSelected = index == selectedIndex;
    return GestureDetector(
      onTap: () => onItemTapped(index),
      child: Icon(
        icon,
        color: isSelected ? Colors.white : Colors.white38,
        size: isSelected ? 28.sp : 24.sp,
      ),
    );
  }
}
