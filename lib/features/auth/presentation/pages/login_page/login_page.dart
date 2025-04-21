import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:trebel/core/extensions/size_extensions.dart';
import 'package:trebel/features/auth/presentation/pages/register_page/loading_page.dart';
import 'package:trebel/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:trebel/features/auth/presentation/widgets/login_widget/login_logo.dart';
import 'package:trebel/features/auth/presentation/widgets/login_widget/login_email_field.dart';
import 'package:trebel/features/auth/presentation/widgets/login_widget/login_password_field.dart';
import 'package:trebel/features/auth/presentation/widgets/login_widget/login_remember_forgot.dart';
import 'package:trebel/features/auth/data/models/requests/user_auth_request.dart';
import 'package:trebel/features/auth/presentation/bloc/user_auth/user_auth_bloc.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _LoginContent();
  }
}

class _LoginContent extends StatefulWidget {
  const _LoginContent({super.key});

  @override
  State<_LoginContent> createState() => _LoginContentState();
}

class _LoginContentState extends State<_LoginContent>
    with SingleTickerProviderStateMixin {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;
  final _snackKey = GlobalKey<AnimatedSnackBarState>();

  void _onLoginPressed() {
    final email = _emailController.text.trim();
    final password = _passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      _snackKey.currentState?.show("Email dan password tidak boleh kosong");
      return;
    }

    context.read<UserAuthBloc>().add(
          UserAuthEvent.loginRequested(
            UserAuthRequest(email: email, password: password),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return BlocListener<UserAuthBloc, UserAuthState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (user) async {
            // Tampilkan loading page dengan animasi
            if (context.mounted) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const LoadingPage(message: 'Sedang masuk...'),
                ),
              );
            }

            await Future.delayed(const Duration(seconds: 1));

            if (context.mounted) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => const DashboardPage()),
              );
            }
          },
          failure: (message) {
            _snackKey.currentState?.show(message);
          },
        );
      },
      child: Scaffold(
        backgroundColor: const Color(0xFF222831),
        body: Stack(
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 24.width),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 80.h),
                  const Center(child: LoginLogo()),
                  SizedBox(height: 32.h),
                  Center(
                    child: Text(
                      localizations.loginTitle,
                      style: GoogleFonts.poppins(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h),
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
                  LoginEmailField(controller: _emailController),
                  SizedBox(height: 20.h),
                  LoginPasswordField(
                    controller: _passwordController,
                    obscureText: _obscurePassword,
                    onToggle: () {
                      setState(() => _obscurePassword = !_obscurePassword);
                    },
                  ),
                  SizedBox(height: 10.h),
                  const LoginRememberForgotSection(),
                  SizedBox(height: 30.h),
                  SizedBox(
                    width: double.infinity,
                    height: 50.h,
                    child: ElevatedButton(
                      onPressed: _onLoginPressed,
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
            Positioned(
              top: 50.h,
              left: 24.w,
              right: 24.w,
              child: AnimatedSnackBar(key: _snackKey),
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatedSnackBar extends StatefulWidget {
  const AnimatedSnackBar({super.key});

  @override
  State<AnimatedSnackBar> createState() => AnimatedSnackBarState();
}

class AnimatedSnackBarState extends State<AnimatedSnackBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  String? _message;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: this);
    _fadeAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
  }

  void show(String message) {
    setState(() => _message = message);
    _controller.forward();
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) _controller.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: _message == null
          ? const SizedBox()
          : Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.error_outline, color: Colors.white),
                  SizedBox(width: 8.w),
                  Flexible(
                    child: Text(
                      _message!,
                      style: GoogleFonts.poppins(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
