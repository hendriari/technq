import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCarouselSlider extends StatefulWidget {
  final List<Widget> items;
  final bool autoPlay;
  final Duration autoPlayInterval;
  final double viewportFraction;

  const CustomCarouselSlider({
    super.key,
    required this.items,
    this.autoPlay = false,
    this.autoPlayInterval = const Duration(seconds: 3),
    this.viewportFraction = 0.9,
  });

  @override
  State<CustomCarouselSlider> createState() => _CustomCarouselSliderState();
}

class _CustomCarouselSliderState extends State<CustomCarouselSlider> {
  late final PageController _pageController;
  final ValueNotifier<int> _currentPage = ValueNotifier(0);
  Timer? _autoPlayTimer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: widget.viewportFraction,
    );

    if (widget.autoPlay) {
      _startAutoPlay();
    }
  }

  void _startAutoPlay() {
    _autoPlayTimer?.cancel();
    _autoPlayTimer = Timer.periodic(widget.autoPlayInterval, (timer) {
      if (_pageController.hasClients && widget.items.length > 1) {
        _currentPage.value = (_currentPage.value + 1) % widget.items.length;
        _pageController.animateToPage(
          _currentPage.value,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _autoPlayTimer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: widget.items.length,
      onPageChanged: (index) {
        _currentPage.value = index;
      },
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: widget.items[index],
        );
      },
    );
  }
}
