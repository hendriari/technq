import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:technq/src/core/shared/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:technq/src/core/shared/features/auth/presentation/bloc/auth_state.dart';
import 'package:technq/src/core/shared/features/menu/bloc/menu_bloc.dart';
import 'package:technq/src/core/shared/features/menu/bloc/menu_event.dart';
import 'package:technq/src/core/theme/custom_colors.dart';
import 'package:technq/src/core/utils/constants.dart';
import 'package:technq/src/core/utils/helper.dart';
import 'package:technq/src/core/widgets/button_widget.dart';
import 'package:technq/src/core/widgets/custom_carousel_slider_widget.dart';
import 'package:technq/src/core/widgets/shimmer_widget.dart';
import 'package:technq/src/features/dashboard/data/mapper/fakultas_mapper.dart';
import 'package:technq/src/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:technq/src/features/dashboard/presentation/bloc/dashboard_event.dart';
import 'package:technq/src/features/dashboard/presentation/bloc/dashboard_state.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late TextTheme _textTheme;
  late Brightness _brightness;
  final ScrollController _scrollController = ScrollController();
  final ValueNotifier<bool> _isScrolled = ValueNotifier(false);
  late Helper _helper;
  late DateFormat _dateFormat;

  @override
  void initState() {
    super.initState();
    _helper = Helper();
    _dateFormat = DateFormat('d MMM y');
    _scrollController.addListener(() {
      if (_scrollController.offset > 70.h) {
        if (_isScrolled.value == false) {
          _isScrolled.value = true;
        }
      } else {
        _isScrolled.value = false;
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<DashboardBloc>().add(GetFakultasEvent());
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
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
            [
          /// HEADER APPBAR
          ValueListenableBuilder(
              valueListenable: _isScrolled,
              builder: (context, v, c) {
                return SliverAppBar(
                  pinned: true,
                  expandedHeight: 150.h,
                  flexibleSpace: FlexibleSpaceBar(
                    titlePadding: EdgeInsets.only(
                      left: 20.w,
                      bottom: 16.0,
                    ),
                    title: _isScrolled.value == true
                        ? BlocBuilder<AuthBloc, AuthState>(
                            builder: (context, state) {
                              return Row(
                                children: [
                                  Icon(Icons.account_circle),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(state.user?.name ?? ''),
                                ],
                              );
                            },
                          )
                        : SizedBox.shrink(),
                    expandedTitleScale: 1.3.sp,
                    background: Container(
                      margin: EdgeInsets.only(bottom: 5.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40.r),
                          bottomRight: Radius.circular(40.r),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: isDark
                                ? CustomColors.light.withValues(alpha: 2)
                                : CustomColors.dark,
                            blurRadius: 3,
                            blurStyle: BlurStyle.solid,
                          ),
                        ],
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(Constants.dashboardHeaderImage),
                        ),
                      ),
                    ),
                  ),
                  backgroundColor: _isScrolled.value
                      ? (isDark ? CustomColors.dark : CustomColors.light)
                      : Colors.transparent,
                );
              }),
        ],
        body: BlocConsumer<DashboardBloc, DashboardState>(
          listener: (context, state) {
            state.whenOrNull(
                failed: (_, __, ___, message) => _helper.showToast(
                    message: message, backGroundColor: CustomColors.redLight),
                successGetFakultas: (_, __, ___) {
                  context.read<DashboardBloc>().add(DashboardEvent.getReview());
                });
          },
          builder: (context, state) {
            return SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                vertical: 15.h,
                horizontal: 15.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// TITLE FAKULTAS
                  Text(
                    'Fakultas Teknik dan Informatika',
                    style: _textTheme.bodyLarge?.copyWith(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  /// LIST FAKULTAS
                  state.maybeWhen(
                    failed: (_, __, ___, message) => ButtonWidget(
                        buttonText: 'Refresh',
                        onTap: () {
                          context.read<DashboardBloc>().add(GetFakultasEvent());
                        }),
                    orElse: () => GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.only(top: 8.h, bottom: 10.h),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                        childAspectRatio: 0.75,
                      ),
                      itemCount: state.maybeWhen(
                        loadingGetFakultas: (_, __, ___) => 6,
                        orElse: () => state.listFakultas?.length ?? 0,
                      ),
                      itemBuilder: (context, index) => state.maybeWhen(
                        loadingGetFakultas: (_, __, ___) => ShimmerWidget(
                          child: Container(
                            height: 250.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              color: isDark
                                  ? CustomColors.dark
                                  : CustomColors.light,
                            ),
                          ),
                        ),
                        orElse: () {
                          final data = state.listFakultas?[index];
                          return Bounceable(
                            onTap: () {
                              if (data != null) {
                                context.goNamed('detail-fakultas',
                                    queryParameters: data.toMap().map(
                                        (key, value) =>
                                            MapEntry(key, value.toString())));
                              }
                            },
                            child: Stack(
                              children: [
                                /// BG
                                Hero(
                                  tag: '${data?.id}',
                                  child: Container(
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
                                              : CustomColors.dark,
                                          blurRadius: 3,
                                          blurStyle: BlurStyle.solid,
                                        ),
                                      ],
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          data?.image ??
                                              Constants.notFoundImage,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                /// NAMA FAKULTAS
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    constraints:
                                        BoxConstraints(maxHeight: 60.h),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15.w),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color:
                                          Colors.black.withValues(alpha: 0.8),
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(20.r),
                                        bottomLeft: Radius.circular(20.r),
                                      ),
                                    ),
                                    child: Text(
                                      data?.name ?? '-',
                                      style: _textTheme.bodyLarge?.copyWith(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),

                  /// REVIEW AHP
                  state.maybeWhen(
                    loadingGetFakultas: (_, __, ___) =>
                        _buildLoadingTitleReviewWidget(),
                    loadingGetReview: (_, __, ___) =>
                        _buildLoadingTitleReviewWidget(),
                    orElse: () => state.listReview != null &&
                            state.listReview!.isNotEmpty
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Hasil Analisa Minat Siswa',
                                style: _textTheme.bodyLarge?.copyWith(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              IconButton(
                                onPressed: () => context
                                    .read<MenuBloc>()
                                    .add(ChangeIndexMenuEvent(index: 1)),
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20.sp,
                                ),
                              ),
                            ],
                          )
                        : SizedBox(),
                  ),

                  /// LIST REVIEW
                  state.maybeWhen(
                    loadingGetFakultas: (_, __, ___) =>
                        _buildLoadingReviewWidget(),
                    loadingGetReview: (_, __, ___) =>
                        _buildLoadingReviewWidget(),
                    orElse: () {
                      return state.listReview != null &&
                              state.listReview!.isNotEmpty
                          ? SizedBox(
                              height: 160.h,
                              child: CustomCarouselSlider(
                                items: state.listReview!.map((data) {
                                  return Container(
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.symmetric(vertical: 5.h),
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
                                        /// NAME & DATE UPDATE
                                        Row(
                                          children: [
                                            Icon(
                                              CupertinoIcons.person,
                                              size: 14.sp,
                                            ),
                                            SizedBox(
                                              width: 4.w,
                                            ),

                                            /// NAME
                                            Expanded(
                                              child: Text(
                                                data.userName?.toUpperCase() ??
                                                    '-',
                                                style: _textTheme.bodyMedium
                                                    ?.copyWith(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),

                                            SizedBox(
                                              width: 6.w,
                                            ),

                                            /// DATE UPDATE
                                            Text(
                                              data.dateUpdate != null
                                                  ? _dateFormat.format(
                                                      DateTime.parse(
                                                          data.dateUpdate!))
                                                  : '-',
                                              style: _textTheme.bodyMedium
                                                  ?.copyWith(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey.shade600,
                                                fontStyle: FontStyle.italic,
                                              ),
                                            ),
                                          ],
                                        ),

                                        SizedBox(
                                          height: 10.h,
                                        ),

                                        /// LIST RESULT

                                        data.results.isNotEmpty
                                            ? Expanded(
                                                child: Scrollbar(
                                                  child: ListView.builder(
                                                    itemCount:
                                                        data.results.length,
                                                    shrinkWrap: true,
                                                    itemBuilder:
                                                        (context, index) {
                                                      final resultData =
                                                          data.results[index];
                                                      return Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                bottom: 2.h,
                                                                right: 8.w),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            /// NUMBER INDEX
                                                            Text(
                                                              '${index + 1}.',
                                                              style: _textTheme
                                                                  .bodyMedium
                                                                  ?.copyWith(
                                                                fontSize: 14.sp,
                                                              ),
                                                            ),

                                                            SizedBox(
                                                              width: 4.w,
                                                            ),

                                                            /// ALTERNATIVE NAME
                                                            Expanded(
                                                              child: Text(
                                                                resultData
                                                                        .name ??
                                                                    '-',
                                                                style: _textTheme
                                                                    .bodyMedium
                                                                    ?.copyWith(
                                                                  fontSize:
                                                                      14.sp,
                                                                ),
                                                              ),
                                                            ),

                                                            /// VALUE
                                                            Text(
                                                              '${(resultData.value ?? 0) * 100}'
                                                                  .substring(
                                                                      0, 5),
                                                              style: _textTheme
                                                                  .bodyMedium
                                                                  ?.copyWith(
                                                                fontSize: 14.sp,
                                                              ),
                                                            ),

                                                            Text(
                                                              '%',
                                                              style: _textTheme
                                                                  .bodyMedium
                                                                  ?.copyWith(
                                                                fontSize: 14.sp,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              )
                                            : SizedBox(),
                                      ],
                                    ),
                                  );
                                }).toList(),
                                autoPlay: state.listReview!.length > 1,
                                autoPlayInterval: const Duration(seconds: 2),
                                viewportFraction: 1.0,
                              ),
                            )
                          : SizedBox();
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  /// LOADING TITLE REVIEW
  Widget _buildLoadingTitleReviewWidget() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ShimmerWidget(
            child: Text(
              'Hasil Analisa Minat Siswa',
              style: _textTheme.bodyLarge?.copyWith(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ShimmerWidget(
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 20.sp,
              ),
            ),
          ),
        ],
      );

  /// LOADING REVIEW
  Widget _buildLoadingReviewWidget() => SizedBox(
        height: 160.h,
        width: double.infinity,
        child: ListView.builder(
          itemCount: 4,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => ShimmerWidget(
            child: Container(
              width: 280.w,
              margin: EdgeInsets.symmetric(
                vertical: 5.h,
                horizontal: 3.w,
              ),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20.r),
              ),
            ),
          ),
        ),
      );
}
