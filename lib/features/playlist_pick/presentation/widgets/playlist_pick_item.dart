import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trebel/features/playlist_pick/domain/entities/playlist_pick.dart';

class SelectPickItemCard extends StatelessWidget {
  final PlaylistPick playlist;
  final bool isSelected;
  final VoidCallback onTap;

  const SelectPickItemCard({
    Key? key,
    required this.playlist,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 0.85,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: isSelected ? Border.all(color: Colors.greenAccent, width: 2.w) : null,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.r),
                    child: Image.network(
                      playlist.imageUrl ?? '',
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) =>
                          const Center(child: Icon(Icons.image)),
                    ),
                  ),
                ),
                if (isSelected)
                  Positioned(
                    top: -10.h,
                    right: -10.w,
                    child: Container(
                      width: 30.w,
                      height: 30.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(color: Colors.greenAccent, width: 2.w),
                      ),
                      child: Icon(Icons.check, color: Colors.greenAccent, size: 18.sp),
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            playlist.name ?? '-',
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
