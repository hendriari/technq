import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technq/src/core/theme/custom_colors.dart';

class ButtonWidget extends StatelessWidget {
  final String buttonText;
  final Function() onTap;
  final Size? minimumSize;
  final Size? maximumSize;
  final Color? buttonColor;
  final Color? buttonTextColor;
  final Color? borderColor;
  final Widget? otherChild;

  const ButtonWidget({
    super.key,
    required this.buttonText,
    required this.onTap,
    this.minimumSize,
    this.maximumSize,
    this.buttonColor,
    this.buttonTextColor,
    this.borderColor,
    this.otherChild,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final brightness = Theme.of(context).brightness;
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        minimumSize: minimumSize ?? Size(double.infinity, 40.h),
        maximumSize: maximumSize ?? Size(double.infinity, 40.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
          side: borderColor != null
              ? BorderSide(
                  color: borderColor!,
                )
              : BorderSide.none,
        ),
      ),
      child: otherChild ??
          Text(
            buttonText,
            style: textTheme.bodyLarge?.copyWith(
              fontSize: 18.sp,
              color: buttonTextColor ??
                  (brightness == Brightness.dark
                      ? CustomColors.light
                      : CustomColors.dark),
              fontWeight: FontWeight.bold,
            ),
          ),
    );
  }
}
