import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trebel/features/splash_screen/presentation/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // sesuaikan dengan desain kamu
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Trebel',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Poppins', // ← ini yang bikin semua pakai Poppins
            scaffoldBackgroundColor: const Color(0xFF222831),
            textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
          ),
          home: const SplashScreenPage(),
        );
      },
    );
  }
}
