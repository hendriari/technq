import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technq/src/core/theme/custom_colors.dart';

class ButtonWidget extends StatelessWidget {
  final String buttonText;
  final Function() onTap;
  final Size? minimumSize;

  const ButtonWidget({
    super.key,
    required this.buttonText,
    required this.onTap,
    this.minimumSize,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: CustomColors.primary100,
        minimumSize: minimumSize ?? Size(double.infinity, 40.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
      child: Text(
        buttonText,
        style: textTheme.bodyLarge?.copyWith(
          fontSize: 18.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
