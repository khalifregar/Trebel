import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trebel/core/extensions/size_extensions.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/icons/trebel_ic.png',
            height: 48.height,
          ),
          SizedBox(width: 9.width),
          Text(
            'Trebel',
            style: GoogleFonts.poppins(
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF00BF63),
            ),
          ),
        ],
      ),
    );
  }
}
