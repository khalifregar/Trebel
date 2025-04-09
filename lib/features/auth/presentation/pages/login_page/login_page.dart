import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trebel/core/extensions/size_extensions.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// Pages
import 'package:trebel/features/dashboard/presentation/pages/dashboard_page.dart';

// Widgets
import 'package:trebel/features/auth/presentation/widgets/login_widget/login_logo.dart';
import 'package:trebel/features/auth/presentation/widgets/login_widget/login_email_field.dart';
import 'package:trebel/features/auth/presentation/widgets/login_widget/login_password_field.dart';
import 'package:trebel/features/auth/presentation/widgets/login_widget/login_remember_forgot.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: const Color(0xFF222831),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.width),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80.h),

            // 🔊 Logo & Brand
            const Center(child: LoginLogo()),
            SizedBox(height: 32.h),

            // 🟩 Title (klik => DashboardPage)
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const DashboardPage()),
                  );
                },
                child: Text(
                  localizations.loginTitle,
                  style: GoogleFonts.poppins(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            SizedBox(height: 8.h),

            // Subtitle
            Center(
              child: Text(
                localizations.loginSubtitle,
                style: GoogleFonts.poppins(
                  fontSize: 12.sp,
                  color: Colors.white70,
                ),
              ),
            ),

            SizedBox(height: 40.h),

            // ✉️ Email Field
            const LoginEmailField(),
            SizedBox(height: 20.h),

            // 🔐 Password Field
            LoginPasswordField(
              obscureText: _obscurePassword,
              onToggle: () {
                setState(() => _obscurePassword = !_obscurePassword);
              },
            ),
            SizedBox(height: 10.h),

            // 🔁 Remember + Forgot
            const LoginRememberForgotSection(),
            SizedBox(height: 30.h),

            // ✅ Login Button
            SizedBox(
              width: double.infinity,
              height: 50.h,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const DashboardPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF00BF63),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                child: Text(
                  localizations.loginButton,
                  style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            SizedBox(height: 40.h),
          ],
        ),
      ),
    );
  }
}
