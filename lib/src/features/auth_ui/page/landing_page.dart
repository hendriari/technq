import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technq/src/core/theme/custom_colors.dart';
import 'package:technq/src/core/utils/constants.dart';
import 'package:technq/src/core/widgets/button_widget.dart';
import 'package:technq/src/features/auth_ui/widget/login_widget.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  late TextTheme _textTheme;
  late Brightness _brightness;
  late ValueNotifier<int> _indexBg;
  late List<String> _bgImages;

  @override
  void initState() {
    super.initState();
    _indexBg = ValueNotifier(0);
    _bgImages = [
      Constants.pmb4Image,
      Constants.pmb2Image,
      Constants.pmb3Image,
      Constants.pmb1Image,
    ];
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _textTheme = Theme.of(context).textTheme;
    _brightness = Theme.of(context).brightness;
  }

  @override
  void dispose() {
    super.dispose();
    _indexBg.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = _brightness == Brightness.dark;
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: constraints.maxWidth,
            minWidth: constraints.maxWidth,
            minHeight: constraints.maxHeight,
            maxHeight: constraints.maxHeight,
          ),
          child: Stack(
            children: [
              /// BG
              Container(
                height: constraints.maxHeight,
                width: constraints.maxWidth,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue.withValues(alpha: .9),
                      Colors.blue.withValues(alpha: .7),
                      Colors.blue.withValues(alpha: .5),
                      Colors.blue.withValues(alpha: .3),
                      Colors.blue.withValues(alpha: .1),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),

              /// IMAGE BG
              ValueListenableBuilder(
                  valueListenable: _indexBg,
                  builder: (context, c, v) {
                    return CarouselSlider.builder(
                      itemCount: _bgImages.length,
                      itemBuilder: (context, index, subIndex) => Container(
                        height: constraints.maxHeight,
                        width: constraints.maxWidth,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(_bgImages[index]),
                          ),
                        ),
                      ),
                      options: CarouselOptions(
                          height: constraints.maxHeight,
                          viewportFraction: 1.0,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 3),
                          onPageChanged: (currentIndex, reasonIndex) {
                            _indexBg.value = currentIndex;
                          }),
                    );
                  }),

              /// BLUR BG
              Container(
                height: constraints.maxHeight,
                width: constraints.maxWidth,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withValues(alpha: .9),
                      Colors.black.withValues(alpha: .7),
                      Colors.black.withValues(alpha: .5),
                      Colors.black.withValues(alpha: .3),
                      Colors.black.withValues(alpha: .1),
                      Colors.transparent
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),

              /// LOGO
              SafeArea(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 100.h,
                    width: 300.w,
                    margin: EdgeInsets.only(
                      top: 20.h,
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(isDark
                            ? Constants.splashDarkImage
                            : Constants.splashImage),
                      ),
                    ),
                  ),
                ),
              ),

              /// INFO, DOT INDEX, BUTTON START
              SafeArea(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 20.h,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        /// INFO
                        Text(
                          'Sistem Pendukung Keputusan\nRekomendasi fakultas teknik di Universitas PGRI Semarang',
                          textAlign: TextAlign.center,
                          style: _textTheme.bodyMedium?.copyWith(
                            fontSize: 14.sp,
                            color: Colors.white,
                          ),
                        ),

                        /// DOT
                        Container(
                          height: 5.h,
                          margin: EdgeInsets.symmetric(vertical: 10.h),
                          child: ValueListenableBuilder(
                              valueListenable: _indexBg,
                              builder: (context, content, c) {
                                return ListView.builder(
                                    itemCount: 4,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return AnimatedContainer(
                                        duration: Duration(milliseconds: 450),
                                        height: 5,
                                        width: _indexBg.value == index
                                            ? 30.w
                                            : 15.w,
                                        margin: EdgeInsets.only(right: 5.w),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          color: Colors.white,
                                        ),
                                      );
                                    });
                              }),
                        ),

                        /// BUTTON WIDGET
                        ButtonWidget(
                          buttonText: 'Mulai',
                          buttonColor: CustomColors.primary100,
                          buttonTextColor: Colors.white,
                          onTap: () => showLoginModalBottomSheet(context),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
