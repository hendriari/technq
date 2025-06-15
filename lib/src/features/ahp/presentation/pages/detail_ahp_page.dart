import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technq/src/core/theme/custom_colors.dart';
import 'package:technq/src/features/ahp/presentation/bloc/ahp_bloc.dart';
import 'package:technq/src/features/ahp/presentation/bloc/ahp_state.dart';
import 'package:technq/src/features/ahp/presentation/widget/list_kriteria_widget.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class DetailAhpPage extends StatefulWidget {
  const DetailAhpPage({super.key});

  @override
  State<DetailAhpPage> createState() => _DetailAhpPageState();
}

class _DetailAhpPageState extends State<DetailAhpPage> {
  late TextTheme _textTheme;
  late Brightness _brightness;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _textTheme = Theme.of(context).textTheme;
    _brightness = Theme.of(context).brightness;
  }

  @override
  Widget build(BuildContext context) {
    final isDark = _brightness == Brightness.dark;
    return Scaffold(
      body: Stack(
        children: [
          /// BACKGROUND
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: WaveWidget(
              config: CustomConfig(
                colors: [
                  isDark
                      ? CustomColors.dark.withValues(alpha: 1.5)
                      : CustomColors.primary300,
                  isDark ? CustomColors.dark : CustomColors.light,
                ],
                durations: [
                  5000,
                  4000,
                ],
                heightPercentages: [
                  0.03.h,
                  0.04.h,
                ],
              ),
              backgroundColor: CustomColors.primary100,
              size: Size(double.infinity, double.infinity),
              waveAmplitude: 0,
            ),
          ),

          /// TITLE
          SafeArea(
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              height: 70.h,
              child: Text(
                'Prioritas Kriteria',
                style: _textTheme.bodyLarge?.copyWith(
                  fontSize: 30.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          /// CONTENT
          BlocConsumer<AhpBloc, AhpState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              return SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 120.h,
                    left: 15.w,
                    right: 15.w,
                    bottom: 15.h,
                  ),
                  child: LayoutBuilder(builder: (context, constraints) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mohon tentukan pilihanmu',
                          style: _textTheme.bodyLarge?.copyWith(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(
                          height: 10.h,
                        ),

                        /// DETAIL
                        Expanded(
                          child: ListKriteriaWidget(),
                        ),

                        SizedBox(
                          height: 20.h,
                        ),

                        /// BUTTON SELECTED TYPE
                        Align(
                          alignment: Alignment.centerRight,
                          child: Bounceable(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 8.h,
                                horizontal: 15.w,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                color: CustomColors.primary100,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  /// ALTERNATIVE
                                  Text(
                                    'Alternative',
                                    style: _textTheme.bodyLarge?.copyWith(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),

                                  SizedBox(
                                    width: 8.w,
                                  ),

                                  /// ICON
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 18.sp,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
