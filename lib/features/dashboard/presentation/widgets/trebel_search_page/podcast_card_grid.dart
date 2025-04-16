import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'podcast_card.dart';

class PodcastCardGrid extends StatelessWidget {
  const PodcastCardGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.only(bottom: 24.h),
        crossAxisCount: 2,
        mainAxisSpacing: 14.h,
        crossAxisSpacing: 14.w,
        childAspectRatio: 2.8,
        children: const [
          PodcastCard(
            color: Colors.deepPurple,
            title: 'Podcast',
            image: 'assets/images/onboarding.jpg',
          ),
          PodcastCard(
            color: Colors.orange,
            title: 'Indie',
            image: 'assets/images/onboarding.jpg',
          ),
          PodcastCard(
            color: Colors.red,
            title: 'Indonesia',
            image: 'assets/images/onboarding.jpg',
          ),
          PodcastCard(
            color: Colors.lightGreen,
            title: 'Pop',
            image: 'assets/images/onboarding.jpg',
          ),
        ],
      ),
    );
  }
}
