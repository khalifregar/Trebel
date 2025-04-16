import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:video_player/video_player.dart';
import 'package:shimmer/shimmer.dart';

class VideoListView extends StatefulWidget {
  const VideoListView({super.key});

  @override
  State<VideoListView> createState() => _VideoListViewState();
}

class _VideoListViewState extends State<VideoListView> {
  final List<VideoPlayerController?> _controllers = [];
  final List<String> videoAssets = [
    'assets/videos/sample.mp4',
    'assets/videos/sample.mp4',
    'assets/videos/sample.mp4',
  ];

  final List<String> imageAssets = [
    'assets/images/card.jpeg',
    'assets/images/card_2.jpeg',
    'assets/images/card_3.jpeg',
  ];

  final List<String> captions = [
    '#justinbieber ghost',
    '#billieeilish oceaneyes',
    '#theweeknd blindinglights',
  ];

  final Set<int> _initializedIndexes = {};
  bool _isLoading = true;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controllers.addAll(List.filled(videoAssets.length, null));
    _loadCachedVideos();
  }

  Future<void> _loadCachedVideos() async {
    final prefs = await SharedPreferences.getInstance();
    final tempDir = await getTemporaryDirectory();
    final cachedPaths = prefs.getStringList('cachedVideoPaths') ?? [];

    for (int i = 0; i < videoAssets.length; i++) {
      final path = await _getVideoPath(videoAssets[i], tempDir, cachedPaths, i);
      await _initializeController(i, path);
    }

    await prefs.setStringList('cachedVideoPaths', cachedPaths);

    if (mounted) {
      setState(() => _isLoading = false);
      _playNext();
    }
  }

  Future<String> _getVideoPath(
    String asset,
    Directory tempDir,
    List<String> cachedPaths,
    int index,
  ) async {
    if (index < cachedPaths.length && File(cachedPaths[index]).existsSync()) {
      return cachedPaths[index];
    }

    final fileName = asset.split('/').last;
    final tempFilePath = '${tempDir.path}/$fileName';
    final byteData = await rootBundle.load(asset);
    final file = File(tempFilePath);
    await file.writeAsBytes(byteData.buffer.asUint8List());

    if (cachedPaths.length > index) {
      cachedPaths[index] = tempFilePath;
    } else {
      cachedPaths.add(tempFilePath);
    }
    return tempFilePath;
  }

  Future<void> _initializeController(int index, String path) async {
    try {
      final controller = VideoPlayerController.file(File(path));
      await controller.initialize();
      controller.setLooping(false);
      controller.setVolume(0);
      _controllers[index] = controller;
      _initializedIndexes.add(index);
    } catch (e) {
      log('Failed to load $path: $e');
      _controllers[index] = null;
    }
  }

  Future<void> _playNext() async {
    if (_currentIndex >= _controllers.length) return;

    final controller = _controllers[_currentIndex];
    if (controller != null) {
      controller.play();
      await Future.delayed(const Duration(seconds: 10));
      controller.pause();
    }

    if (!mounted) return;

    setState(() => _currentIndex++);
    Future.delayed(const Duration(milliseconds: 300), _playNext);
  }

  Widget _buildVideoCard(int index) {
    final controller = _controllers[index];
    final isReady = _initializedIndexes.contains(index) && controller != null;
    final isPlaying = index == _currentIndex;

    Widget content;
    if (_isLoading) {
      content = _buildShimmer();
    } else if (isReady && isPlaying) {
      content = _buildVideo(controller!);
    } else {
      content = _buildImage(index);
    }

    return Stack(
      children: [
        Positioned.fill(child: content),
        _buildCaption(index),
      ],
    );
  }

  Widget _buildShimmer() => Shimmer.fromColors(
        baseColor: Colors.grey[800]!,
        highlightColor: Colors.grey[700]!,
        child: Container(color: Colors.grey),
      );

  Widget _buildVideo(VideoPlayerController controller) => FittedBox(
        fit: BoxFit.cover,
        child: SizedBox(
          width: controller.value.size.width,
          height: controller.value.size.height,
          child: VideoPlayer(controller),
        ),
      );

  Widget _buildImage(int index) => Image.asset(
        imageAssets[index],
        fit: BoxFit.cover,
      );

  Widget _buildCaption(int index) => Positioned(
        left: 8.w,
        right: 8.w,
        bottom: 8.h,
        child: Text(
          captions[index],
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 12.sp,
            shadows: [
              Shadow(
                offset: const Offset(0, 1),
                blurRadius: 3,
                color: Colors.black.withOpacity(0.7),
              )
            ],
          ),
        ),
      );

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller?.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 16.w, right: 8.w, top: 12.h),
        itemCount: videoAssets.length,
        separatorBuilder: (_, __) => SizedBox(width: 12.w),
        itemBuilder: (context, index) => ClipRRect(
          borderRadius: BorderRadius.circular(12.r),
          child: SizedBox(
            width: 120.w,
            height: 200.h,
            child: _buildVideoCard(index),
          ),
        ),
      ),
    );
  }
}
