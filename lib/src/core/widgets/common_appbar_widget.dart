import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technq/src/core/theme/custom_colors.dart';

class CommonAppbarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;

  const CommonAppbarWidget({
    super.key,
    required this.title,
  });

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final brightness = Theme.of(context).brightness;
    return AppBar(
      title: Text(
        title,
        style: textTheme.bodyMedium?.copyWith(
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: brightness == Brightness.dark
          ? CustomColors.dark
          : CustomColors.light,
      centerTitle: true,
    );
  }
}
