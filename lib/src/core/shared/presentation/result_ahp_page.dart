import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:technq/src/core/shared/entities/ahp_result_entities.dart';
import 'package:technq/src/core/shared/features/menu/bloc/menu_bloc.dart';
import 'package:technq/src/core/shared/features/menu/bloc/menu_event.dart';
import 'package:technq/src/core/theme/hex_color.dart';
import 'package:technq/src/core/widgets/common_appbar_widget.dart';

class ResultAhpPage extends StatefulWidget {
  final AhpResultEntities? data;

  const ResultAhpPage({
    super.key,
    required this.data,
  });

  @override
  State<ResultAhpPage> createState() => _ResultAhpPageState();
}

class _ResultAhpPageState extends State<ResultAhpPage> {
  late TextTheme _textTheme;
  late Brightness _brightness;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _textTheme = Theme.of(context).textTheme;
    _brightness = Theme.of(context).brightness;
  }

  final colors = <Color>[
    HexColor("6BAED6"),
    HexColor("9E9AC8"),
    HexColor("FCAE91"),
    HexColor("A1D99B"),
    HexColor("FFD98E"),
    HexColor("C7E9C0"),
    Colors.grey,
  ];

  @override
  Widget build(BuildContext context) {
    final isDark = _brightness == Brightness.dark;
    return Scaffold(
      appBar: CommonAppbarWidget(title: 'Detail Result'),
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) {
          if (didPop) return;
          context.pop();
          context
              .read<MenuBloc>()
              .add(MenuEvent.changeIndexMenuEvent(index: 2));
        },
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 25.w),
          child: widget.data != null && widget.data!.results.isNotEmpty
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    /// PIE CHART VALUE
                    Center(
                      child: SizedBox(
                        height: 250.h,
                        width: 250.h,
                        child: PieChart(
                          PieChartData(
                              sections: List.generate(
                                  widget.data?.results.length ?? 0, (i) {
                            final resultData = widget.data?.results[i];
                            return PieChartSectionData(
                              value: resultData?.value,
                              titleStyle: _textTheme.bodyLarge?.copyWith(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: isDark ? Colors.white : Colors.black,
                              ),
                              title:
                                  "${((resultData?.value ?? 0) * 100).toString().substring(0, 5)}%\n${resultData?.name ?? '-'}",
                              color: colors[i],
                              radius: 80.r,
                            );
                          })),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20.h,
                    ),

                    /// DETAIL VALUE
                    ...(widget.data != null && widget.data!.results.isNotEmpty
                        ? List.generate(
                            widget.data!.results.length,
                            (si) {
                              final resultData = widget.data?.results[si];
                              return Column(
                                children: [
                                  /// DETAIL
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 2.h),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        /// NUMBER INDEX
                                        Text(
                                          '${si + 1}.',
                                          style:
                                              _textTheme.bodyMedium?.copyWith(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),

                                        SizedBox(
                                          width: 4.w,
                                        ),

                                        /// ALTERNATIVE NAME
                                        Expanded(
                                          child: Text(
                                            resultData?.name ?? '-',
                                            style:
                                                _textTheme.bodyMedium?.copyWith(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),

                                        /// VALUE
                                        Text(
                                          '${(resultData?.value ?? 0) * 100}'
                                              .substring(0, 5),
                                          style:
                                              _textTheme.bodyMedium?.copyWith(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),

                                        Text(
                                          '%',
                                          style:
                                              _textTheme.bodyMedium?.copyWith(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Divider()
                                ],
                              );
                            },
                          )
                        : []),
                  ],
                )
              : Center(
                  child: Text(
                    'Data not available',
                    style: _textTheme.bodyLarge?.copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
