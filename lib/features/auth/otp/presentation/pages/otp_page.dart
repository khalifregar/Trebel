import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpPage extends StatefulWidget {
  final TextEditingController controller;

  const OtpPage({super.key, required this.controller});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final int _otpLength = 6;
  final List<TextEditingController> _controllers = [];
  final List<FocusNode> _focusNodes = [];

  int _resendCountdown = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < _otpLength; i++) {
      _controllers.add(TextEditingController());
      _focusNodes.add(FocusNode());
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  void _startResendCountdown() {
    _resendCountdown = 30;
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_resendCountdown > 0) {
          _resendCountdown--;
        } else {
          _timer?.cancel();
        }
      });
    });
  }

  void _onChanged(int index, String value) {
    if (value.isNotEmpty && index < _otpLength - 1) {
      FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
    } else if (value.isEmpty && index > 0) {
      FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
    }
  }

  void _onVerifyPressed() {
    final otp = _controllers.map((e) => e.text).join();
    debugPrint('OTP yang dimasukkan: $otp');

    if (otp.length != _otpLength) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Semua field harus diisi')),
      );
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('OTP diverifikasi')),
    );
  }

  void _onResendPressed() {
    if (_resendCountdown == 0) {
      debugPrint('Mengirim ulang OTP...');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('OTP dikirim ulang')),
      );
      _startResendCountdown();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF222831),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 60.h),
              const Icon(Icons.lock_outline, size: 80, color: Colors.white),
              SizedBox(height: 24.h),
              Text(
                'Verifikasi OTP',
                style: GoogleFonts.poppins(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 12.h),
              Text(
                'Masukkan kode OTP yang dikirim ke ponsel Anda',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 12.sp,
                  color: Colors.white70,
                ),
              ),
              SizedBox(height: 40.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(_otpLength, (index) {
                  return Material(
                    color: const Color(0xFF393E46),
                    borderRadius: BorderRadius.circular(8.r),
                    child: SizedBox(
                      width: 48.w,
                      height: 56.h,
                      child: TextField(
                        controller: _controllers[index],
                        focusNode: _focusNodes[index],
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20.sp,
                        ),
                        maxLength: 1,
                        decoration: const InputDecoration(
                          counterText: '',
                          border: InputBorder.none,
                        ),
                        onChanged: (value) => _onChanged(index, value),
                      ),
                    ),
                  );
                }),
              ),
              SizedBox(height: 40.h),
              SizedBox(
                width: double.infinity,
                height: 50.h,
                child: ElevatedButton(
                  onPressed: _onVerifyPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00BF63),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: Text(
                    'Verifikasi',
                    style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              TextButton(
                onPressed: _resendCountdown == 0 ? _onResendPressed : null,
                child: Text(
                  _resendCountdown == 0
                      ? 'Kirim Ulang OTP'
                      : 'Kirim Ulang dalam $_resendCountdown dtk',
                  style: GoogleFonts.poppins(
                    color: Colors.white70,
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
