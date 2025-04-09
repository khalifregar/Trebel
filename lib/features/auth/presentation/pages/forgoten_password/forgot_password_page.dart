import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trebel/core/extensions/size_extensions.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: const Color(0xFF222831),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.width),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.height),
            Text(
              localizations.forgotPasswordTitle,
              style: GoogleFonts.poppins(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8.height),
            Text(
              localizations.forgotPasswordSubtitle,
              style: GoogleFonts.poppins(
                fontSize: 13.sp,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 32.height),

            // Email Field
            Text(
              localizations.emailLabel,
              style: GoogleFonts.poppins(
                fontSize: 14.spFont,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 8.height),
            TextField(
              controller: _emailController,
              cursorColor: const Color(0xFF00BF63),
              style: const TextStyle(color: Colors.white),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white10,
                hintText: localizations.emailHint,
                hintStyle: GoogleFonts.poppins(color: Colors.white54),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.radius),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.radius),
                  borderSide: const BorderSide(
                    color: Color(0xFF00BF63),
                    width: 1.5,
                  ),
                ),
              ),
            ),
            SizedBox(height: 32.height),

            // Send Button
            SizedBox(
              width: double.infinity,
              height: 50.height,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Kirim email pemulihan password
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF00BF63),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.radius),
                  ),
                ),
                child: Text(
                  localizations.sendRecoveryLink,
                  style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
