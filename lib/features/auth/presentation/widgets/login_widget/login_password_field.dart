import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trebel/core/extensions/size_extensions.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginPasswordField extends StatelessWidget {
  final bool obscureText;
  final VoidCallback onToggle;

  const LoginPasswordField({
    super.key,
    required this.obscureText,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          localizations.password,
          style: GoogleFonts.poppins(
            fontSize: 14.spFont,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 8.height),
        TextField(
          obscureText: obscureText,
          cursorColor: const Color(0xFF00BF63),
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white10,
            hintText: localizations.enterPasswordHere,
            hintStyle: GoogleFonts.poppins(color: Colors.white54),
            suffixIcon: IconButton(
              icon: Icon(
                obscureText ? Icons.visibility_off : Icons.visibility,
                color: Colors.white54,
              ),
              onPressed: onToggle,
            ),
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
      ],
    );
  }
}
