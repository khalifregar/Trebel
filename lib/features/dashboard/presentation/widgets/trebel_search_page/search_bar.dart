import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 12.h, bottom: 8.h),
      child: Container(
        height: 36.h,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.08),
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row(
          children: [
            Icon(Icons.search, color: Colors.white60, size: 20.sp),
            SizedBox(width: 10.w),
            Text(
              'Cari musik...',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

