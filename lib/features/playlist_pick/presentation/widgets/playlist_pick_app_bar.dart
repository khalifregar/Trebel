import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trebel/l10n/app_localizations.dart';

class SelectPickAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onSave;

  const SelectPickAppBar({Key? key, required this.onSave}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return AppBar(
      backgroundColor: const Color(0xFF222831),
      elevation: 0,
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: Text(
        localizations.favoriteMusic,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 12.w),
          child: TextButton(
            onPressed: onSave,
            child: Text(
              localizations.nextPick,
              style: TextStyle(
                color: Colors.greenAccent,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
