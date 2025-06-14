import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  final Widget child;

  const ShimmerWidget({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    return Shimmer.fromColors(
      baseColor: brightness == Brightness.dark
          ? Colors.grey.shade800
          : Colors.grey.shade300,
      highlightColor: brightness == Brightness.dark
          ? Colors.grey.shade700
          : Colors.grey.shade200,
      child: child,
    );
  }
}
