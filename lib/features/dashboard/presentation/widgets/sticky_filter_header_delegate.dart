import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StickyFilterHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double height;

  const StickyFilterHeaderDelegate({
    required this.child,
    this.height = 52,
  });

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox(height: height.h, child: child);
  }

  @override
  double get maxExtent => height.h;

  @override
  double get minExtent => height.h;

  @override
  bool shouldRebuild(covariant StickyFilterHeaderDelegate oldDelegate) {
    return oldDelegate.child != child || oldDelegate.height != height;
  }
}
