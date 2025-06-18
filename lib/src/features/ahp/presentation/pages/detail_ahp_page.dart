import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:technq/src/core/shared/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:technq/src/core/shared/mapper/ahp_result_mapper.dart';
import 'package:technq/src/core/theme/custom_colors.dart';
import 'package:technq/src/core/widgets/loading_overlay_widget.dart';
import 'package:technq/src/features/ahp/presentation/bloc/ahp_bloc.dart';
import 'package:technq/src/features/ahp/presentation/bloc/ahp_event.dart';
import 'package:technq/src/features/ahp/presentation/bloc/ahp_state.dart';
import 'package:technq/src/features/ahp/presentation/widget/list_alternative_widget.dart';
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
      body: LoadingOverlayWidget(
        child: BlocListener<AhpBloc, AhpState>(
          listener: (context, state) {
            state.whenOrNull(
              loadingGetResult: (_, __, ___) => context.loaderOverlay.hide(),
              successGetResult: (_, data, __) {
                context.loaderOverlay.hide();
                if (data != null) {
                  context.goNamed(
                    'result-ahp',
                    queryParameters: {
                      'data': jsonEncode(data.toMap()),
                    },
                  );
                }
              },
              failed: (_, __, ___, ____) => context.loaderOverlay.hide(),
            );
          },
          child: Stack(
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
                child: BlocBuilder<AhpBloc, AhpState>(
                  builder: (context, state) {
                    return Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      height: 70.h,
                      child: Text(
                        (state.alternativeIndex ?? 0) < 0
                            ? 'Prioritas Kriteria'
                            : 'Prioritas Alternatif',
                        style: _textTheme.bodyLarge?.copyWith(
                          fontSize:
                              (state.alternativeIndex ?? 0) < 0 ? 30.sp : 25.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    );
                  },
                ),
              ),

              /// CONTENT
              BlocBuilder<AhpBloc, AhpState>(
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
                              (state.alternativeIndex ?? 0) < 0
                                  ? 'Mohon tentukan prioritasmu'
                                  : 'Mohon tentukan prioritas alternatif per kriteria untuk ${state.pairwiseInputs?.inputAlternative[state.alternativeIndex ?? 0].criteria.name}',
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
                              child: state.alternativeIndex == -1
                                  ? ListKriteriaWidget()
                                  : ListAlternatifWidget(),
                            ),

                            SizedBox(
                              height: 20.h,
                            ),

                            /// BUTTON NAVIGATION
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                /// PREVIOUS BUTTON
                                (state.alternativeIndex ?? 0) > -1
                                    ? _buildButtonNavigateWidget(
                                        buttonName: (state.alternativeIndex ??
                                                    0) ==
                                                0
                                            ? 'Kriteria'
                                            : 'Alternatif ${(state.alternativeIndex ?? 0) + 1}',
                                        isPrevious: true,
                                        onTap: () {
                                          context.read<AhpBloc>().add(
                                              AhpEvent.changePairwiseChoice(
                                                  isNext: false));
                                        },
                                      )
                                    : SizedBox(),

                                /// NEXT BUTTON
                                _buildButtonNavigateWidget(
                                  buttonName: (state.alternativeIndex ?? 0) <
                                          ((state
                                                      .pairwiseInputs
                                                      ?.inputAlternative
                                                      .length ??
                                                  0) -
                                              1)
                                      ? 'Alternatif ${(state.alternativeIndex ?? 0) + 2}'
                                      : 'Selesai',
                                  onTap: () {
                                    if ((state.alternativeIndex ?? 0) <
                                        (state.pairwiseInputs?.inputAlternative
                                                    .length ??
                                                0) -
                                            1) {
                                      context.read<AhpBloc>().add(
                                          AhpEvent.changePairwiseChoice(
                                              isNext: true));
                                    } else {
                                      final userState =
                                          context.read<AuthBloc>().state;
                                      context.read<AhpBloc>().add(
                                          AhpEvent.getAhpResult(
                                              userId: userState.user?.id,
                                              userName: userState.user?.name));
                                    }
                                  },
                                ),
                              ],
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
        ),
      ),
    );
  }

  /// BUTTON NAVIGATE
  Widget _buildButtonNavigateWidget({
    required Function() onTap,
    required String buttonName,
    bool isPrevious = false,
  }) =>
      Bounceable(
        onTap: onTap,
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
            children: isPrevious
                ? [
                    /// ICON
                    Icon(
                      Icons.arrow_back_ios,
                      size: 18.sp,
                      color: Colors.white,
                    ),

                    SizedBox(
                      width: 8.w,
                    ),

                    /// PREV
                    Text(
                      buttonName,
                      style: _textTheme.bodyLarge?.copyWith(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ]
                : [
                    /// NEXT
                    Text(
                      buttonName,
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
                    ),
                  ],
          ),
        ),
      );
}
