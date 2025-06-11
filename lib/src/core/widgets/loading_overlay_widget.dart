import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:technq/src/core/theme/custom_colors.dart';

class LoadingOverlayWidget extends StatelessWidget {
  final Widget child;

  const LoadingOverlayWidget({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      overlayWidgetBuilder: (widget) => SpinKitThreeBounce(
        color: CustomColors.primary100,
        size: 20.w,
      ),
      overlayColor: Colors.grey.shade400.withValues(alpha: .6),
      child: child,
    );
  }
}
