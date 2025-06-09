import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../theme/custom_colors.dart';

class Helper {
  /// SHOW TOAST
  Future<dynamic> showToast({
    required String message,
    ToastGravity? toastGravity,
    double? fontSize,
    Color? textColor,
    Color? backGroundColor,
  }) {
    return Fluttertoast.showToast(
      msg: message,
      gravity: toastGravity ?? ToastGravity.CENTER,
      fontSize: fontSize ?? 16.sp,
      textColor: textColor ?? Colors.white,
      backgroundColor: backGroundColor ?? CustomColors.primary100,
    );
  }
}
