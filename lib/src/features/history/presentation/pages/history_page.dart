import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:technq/src/core/shared/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:technq/src/core/theme/custom_colors.dart';
import 'package:technq/src/core/utils/helper.dart';
import 'package:technq/src/core/widgets/common_appbar_widget.dart';
import 'package:technq/src/core/widgets/loading_widget.dart';
import 'package:technq/src/features/history/presentation/bloc/history_bloc.dart';
import 'package:technq/src/features/history/presentation/bloc/history_event.dart';
import 'package:technq/src/features/history/presentation/bloc/history_state.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  late Helper _helper;
  late DateFormat _dateFormat;
  late TextTheme _textTheme;
  late Brightness _brightness;

  @override
  void initState() {
    super.initState();
    _helper = Helper();
    _dateFormat = DateFormat('d MMM y');
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final userState = context.read<AuthBloc>().state;
      context
          .read<HistoryBloc>()
          .add(HistoryEvent.getHistory(userId: userState.user?.id));
    });
  }

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
      appBar: CommonAppbarWidget(title: 'History'),
      body: BlocConsumer<HistoryBloc, HistoryState>(
        listener: (context, state) {
          state.whenOrNull(
              failed: (_, message) => _helper.showToast(
                    message: message,
                    backGroundColor: CustomColors.redLight,
                  ));
        },
        builder: (context, state) {
          return state.maybeWhen(
            loadingGetHistory: (_) => Center(
              child: LoadingWidget(),
            ),
            orElse: () => LayoutBuilder(
              builder: (context, constraints) => RefreshIndicator(
                color: CustomColors.primary100,
                onRefresh: () async {
                  final userState = context.read<AuthBloc>().state;
                  context
                      .read<HistoryBloc>()
                      .add(HistoryEvent.getHistory(userId: userState.user?.id));
                },
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: constraints.maxWidth,
                      minWidth: constraints.maxWidth,
                      maxHeight: constraints.maxHeight,
                      minHeight: constraints.maxHeight,
                    ),
                    child: state.data != null && state.data!.isNotEmpty
                        ? RefreshIndicator(
                            color: CustomColors.primary100,
                            onRefresh: () async {
                              final userState = context.read<AuthBloc>().state;
                              context.read<HistoryBloc>().add(
                                  HistoryEvent.getHistory(
                                      userId: userState.user?.id));
                            },
                            child: ListView.builder(
                              itemCount: state.data?.length ?? 0,
                              padding: EdgeInsets.only(
                                top: 10.h,
                                bottom: 15.h,
                              ),
                              itemBuilder: (context, index) {
                                final data = state.data?[index];
                                return Container(
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 15.w,
                                    vertical: 5.h,
                                  ),
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5.h, horizontal: 12.w),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r),
                                    color: isDark
                                        ? CustomColors.dark
                                        : CustomColors.light,
                                    boxShadow: [
                                      BoxShadow(
                                        color: isDark
                                            ? CustomColors.light
                                                .withValues(alpha: 2)
                                            : CustomColors.grey100,
                                        blurRadius: 2,
                                        blurStyle: BlurStyle.solid,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Hasil tingkat kecocokan Anda',
                                        style: _textTheme.bodyLarge?.copyWith(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),

                                      SizedBox(
                                        height: 8.h,
                                      ),

                                      /// LIST RESULT
                                      ...(data != null &&
                                              data.results.isNotEmpty
                                          ? List.generate(
                                              data.results.length,
                                              (si) {
                                                final resultData =
                                                    data.results[si];
                                                return Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 2.h),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      /// NUMBER INDEX
                                                      Text(
                                                        '${si + 1}.',
                                                        style: _textTheme
                                                            .bodyMedium
                                                            ?.copyWith(
                                                          fontSize: 15.sp,
                                                        ),
                                                      ),

                                                      SizedBox(
                                                        width: 4.w,
                                                      ),

                                                      /// ALTERNATIVE NAME
                                                      Expanded(
                                                        child: Text(
                                                          resultData.name ??
                                                              '-',
                                                          style: _textTheme
                                                              .bodyMedium
                                                              ?.copyWith(
                                                            fontSize: 15.sp,
                                                          ),
                                                        ),
                                                      ),

                                                      /// VALUE
                                                      Text(
                                                        '${(resultData.value ?? 0) * 100}'
                                                            .substring(0, 5),
                                                        style: _textTheme
                                                            .bodyMedium
                                                            ?.copyWith(
                                                          fontSize: 15.sp,
                                                        ),
                                                      ),

                                                      Text(
                                                        '%',
                                                        style: _textTheme
                                                            .bodyMedium
                                                            ?.copyWith(
                                                          fontSize: 15.sp,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            )
                                          : []),

                                      SizedBox(
                                        height: 10.h,
                                      ),

                                      /// DATE UPDATE
                                      Text(
                                        data?.dateUpdate != null
                                            ? 'Diperbarui pada: ${_dateFormat.format(DateTime.parse(data!.dateUpdate!))}'
                                            : '-',
                                        style: _textTheme.bodyMedium?.copyWith(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade600,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          )
                        : Center(
                            child: Text(
                              'History not found',
                              style: _textTheme.bodyMedium
                                  ?.copyWith(fontSize: 16.sp),
                            ),
                          ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
