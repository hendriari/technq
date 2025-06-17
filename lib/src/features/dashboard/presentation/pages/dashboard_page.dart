import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:technq/src/core/shared/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:technq/src/core/shared/features/auth/presentation/bloc/auth_state.dart';
import 'package:technq/src/core/shared/features/menu/bloc/menu_bloc.dart';
import 'package:technq/src/core/shared/features/menu/bloc/menu_event.dart';
import 'package:technq/src/core/theme/custom_colors.dart';
import 'package:technq/src/core/utils/constants.dart';
import 'package:technq/src/core/utils/helper.dart';
import 'package:technq/src/core/widgets/button_widget.dart';
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

  @override
  void initState() {
    super.initState();
    _helper = Helper();
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
        body: SingleChildScrollView(
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
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),

              /// LIST FAKULTAS
              BlocConsumer<DashboardBloc, DashboardState>(
                listener: (context, state) {
                  state.whenOrNull(
                      failed: (message) => _helper.showToast(
                          message: message,
                          backGroundColor: CustomColors.redLight));
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    failed: (message) => ButtonWidget(
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
                        successGetFakultas: (data) => data?.length ?? 0,
                        loadingGetFakultas: () => 6,
                        orElse: () => 0,
                      ),
                      itemBuilder: (context, index) => state.maybeWhen(
                        loadingGetFakultas: () => ShimmerWidget(
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
                          final result = state.maybeWhen(
                            successGetFakultas: (d) => d,
                            orElse: () => null,
                          );
                          final data = result?[index];
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
                                    height: 80.h,
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
                                        fontSize: 20.sp,
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
                  );
                },
              ),

              /// HASIL AHP
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hasil Analisa Minat Siswa',
                    style: _textTheme.bodyLarge?.copyWith(
                      fontSize: 20.sp,
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
            ],
          ),
        ),
      ),
    );
  }
}
