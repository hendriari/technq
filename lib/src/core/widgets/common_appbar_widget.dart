import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonAppbarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final bool? centerTitle;

  const CommonAppbarWidget({
    super.key,
    required this.title,
    this.centerTitle,
  });

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return AppBar(
      title: Text(
        title,
        style: textTheme.bodyMedium?.copyWith(
          fontSize: 22.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.transparent,
      centerTitle: centerTitle ?? true,
    );
  }
}
