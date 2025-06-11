import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:technq/src/core/theme/custom_colors.dart';

class LoadingWidget extends StatelessWidget {
  final bool isWave;
  final double? size;
  final Color? treeBounceColor;

  const LoadingWidget({
    super.key,
    this.isWave = true,
    this.size,
    this.treeBounceColor,
  });

  @override
  Widget build(BuildContext context) {
    return isWave
        ? SpinKitWaveSpinner(
            size: size ?? 70.h,
            color: CustomColors.primary300,
            waveColor: CustomColors.primary100.withValues(alpha: 1),
            trackColor: CustomColors.primary100,
          )
        : SpinKitThreeBounce(
            color: treeBounceColor ?? CustomColors.primary100,
            size: size ?? 30.h,
          );
  }
}
