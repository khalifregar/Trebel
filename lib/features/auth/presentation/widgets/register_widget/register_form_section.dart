import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trebel/core/extensions/size_extensions.dart';

class RegisterFormSection extends StatefulWidget {
  const RegisterFormSection({super.key});

  @override
  State<RegisterFormSection> createState() => _RegisterFormSectionState();
}

class _RegisterFormSectionState extends State<RegisterFormSection> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  bool _obscurePassword = true;
  bool _obscureConfirm = true;
  bool _agreeToTerms = false;

  @override
  void dispose() {
    _emailController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLabel(localizations.emailLabel),
        SizedBox(height: 8.height),
        _buildTextField(
          controller: _emailController,
          hint: localizations.emailHint,
          inputType: TextInputType.emailAddress,
        ),
        SizedBox(height: 20.height),

        _buildLabel("Username"),
        SizedBox(height: 8.height),
        _buildTextField(
          controller: _usernameController,
          hint: "Enter username",
        ),
        SizedBox(height: 20.height),

        _buildLabel(localizations.password),
        SizedBox(height: 8.height),
        _buildTextField(
          controller: _passwordController,
          hint: localizations.enterPasswordHere,
          obscureText: _obscurePassword,
          isPassword: true,
          toggleVisibility: () => setState(() => _obscurePassword = !_obscurePassword),
        ),
        SizedBox(height: 20.height),

        _buildLabel("Confirm Password"),
        SizedBox(height: 8.height),
        _buildTextField(
          controller: _confirmPasswordController,
          hint: "Repeat your password",
          obscureText: _obscureConfirm,
          isPassword: true,
          toggleVisibility: () => setState(() => _obscureConfirm = !_obscureConfirm),
        ),
        SizedBox(height: 20.height),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Checkbox(
              value: _agreeToTerms,
              onChanged: (val) => setState(() => _agreeToTerms = val ?? false),
              activeColor: const Color(0xFF00BF63),
            ),
            Expanded(
              child: RichText(
                text: TextSpan(
                  style: GoogleFonts.poppins(
                    fontSize: 12.spFont,
                    color: Colors.white70,
                  ),
                  children: [
                    TextSpan(text: localizations.agreePolicyText),
                    TextSpan(
                      text: localizations.privacyPolicy,
                      style: const TextStyle(color: Color(0xFF00BF63)),
                    ),
                    const TextSpan(text: ' & '),
                    TextSpan(
                      text: localizations.termsOfService,
                      style: const TextStyle(color: Color(0xFF00BF63)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: 32.height),

        SizedBox(
          width: double.infinity,
          height: 50.height,
          child: ElevatedButton(
            onPressed: _agreeToTerms
                ? () {
                    // TODO: Implement register logic
                  }
                : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF00BF63),
              disabledBackgroundColor: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.radius),
              ),
            ),
            child: Text(
              localizations.registerButton,
              style: GoogleFonts.poppins(
                fontSize: 16.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLabel(String text) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: 14.spFont,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hint,
    TextInputType inputType = TextInputType.text,
    bool obscureText = false,
    bool isPassword = false,
    VoidCallback? toggleVisibility,
  }) {
    return TextField(
      controller: controller,
      keyboardType: inputType,
      obscureText: obscureText,
      cursorColor: const Color(0xFF00BF63),
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 16.width, vertical: 14.height),
        filled: true,
        fillColor: Colors.white10,
        hintText: hint,
        hintStyle: GoogleFonts.poppins(color: Colors.white54),
        suffixIcon: isPassword
            ? IconButton(
                icon: Icon(
                  obscureText ? Icons.visibility_off : Icons.visibility,
                  color: Colors.white54,
                ),
                onPressed: toggleVisibility,
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.radius),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.radius),
          borderSide: const BorderSide(color: Color(0xFF00BF63), width: 1.5),
        ),
      ),
    );
  }
}
