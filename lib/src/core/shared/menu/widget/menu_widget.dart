import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:technq/src/core/shared/menu/bloc/menu_bloc.dart';
import 'package:technq/src/core/shared/menu/bloc/menu_event.dart';
import 'package:technq/src/core/shared/menu/bloc/menu_state.dart';
import 'package:technq/src/core/theme/custom_colors.dart';
import 'package:technq/src/core/utils/constants.dart';
import 'package:technq/src/core/utils/helper.dart';
import 'package:technq/src/features/ahp/presentation/pages/ahp_page.dart';
import 'package:technq/src/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:technq/src/features/history/presentation/pages/history_page.dart';
import 'package:technq/src/features/setting/presentation/page/setting_page.dart';

class MenuWidget extends StatefulWidget {
  final int indexMenu;

  const MenuWidget({
    super.key,
    this.indexMenu = 0,
  });

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  late Helper _helper;
  late Brightness _brightness;
  late int _indexMenu;

  @override
  void initState() {
    super.initState();
    _indexMenu = widget.indexMenu;
    _helper = Helper();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: CustomColors.dark,
      systemNavigationBarColor: CustomColors.dark,
      systemNavigationBarDividerColor: Colors.white,
    ));
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<MenuBloc>().add(ChangeIndexMenuEvent(index: _indexMenu));
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _brightness = Theme.of(context).brightness;
  }

  final List<Widget> _listMenu = [
    DashboardPage(),
    AhpPage(),
    HistoryPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<MenuBloc, MenuState>(
        listener: (context, state) {
          state.whenOrNull(
            exitApp: (indexMenu, exit, time) {
              if (!exit) {
                _helper.showToast(
                  message: 'Tekan lagi untuk keluar dari aplikasi',
                  toastGravity: ToastGravity.BOTTOM,
                  backGroundColor: _brightness == Brightness.dark
                      ? Colors.black
                      : Colors.white,
                  textColor: _brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                );
              } else {
                SystemChannels.platform.invokeMethod('SystemNavigator.pop');
              }
            },
          );
        },
        builder: (context, state) {
          return SafeArea(child: _listMenu[state.indexMenu]);
        },
      ),
      bottomNavigationBar: _buildMenu(context),
    );
  }

  /// MENU
  Widget _buildMenu(BuildContext context) {
    return BlocBuilder<MenuBloc, MenuState>(
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.only(
            bottom: 2.h,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20.r),
            ),
            color: _brightness == Brightness.dark
                ? CustomColors.dark
                : CustomColors.light,
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            selectedItemColor: CustomColors.primary100,
            unselectedItemColor: CustomColors.grey100,
            showSelectedLabels: true,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 13.sp,
            unselectedFontSize: 12.sp,
            iconSize: 24.sp,
            onTap: (value) {
              context.read<MenuBloc>().add(ChangeIndexMenuEvent(index: value));
            },
            currentIndex: state.indexMenu,
            items: [
              BottomNavigationBarItem(
                  key: const Key('dashboard'),
                  icon: _selectedIndexIcon(
                    numberIndex: 0,
                    selectedIndex: state.indexMenu,
                    iconPath: Constants.menuHomeIcon,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  key: const Key('ahp'),
                  icon: _selectedIndexIcon(
                    numberIndex: 1,
                    selectedIndex: state.indexMenu,
                    iconPath: Constants.menuAhpIcon,
                  ),
                  label: 'AHP'),
              BottomNavigationBarItem(
                  key: const Key('history'),
                  icon: _selectedIndexIcon(
                    numberIndex: 2,
                    selectedIndex: state.indexMenu,
                    iconPath: Constants.menuHistoryIcon,
                  ),
                  label: 'History'),
              BottomNavigationBarItem(
                  key: const Key('setting'),
                  icon: _selectedIndexIcon(
                    numberIndex: 3,
                    selectedIndex: state.indexMenu,
                    iconPath: Constants.menuSettingIcon,
                  ),
                  label: 'Setting'),
            ],
          ),
        );
      },
    );
  }

  /// ICON BOTTOM NAVBAR
  Widget _selectedIndexIcon({
    required String iconPath,
    required int numberIndex,
    required int selectedIndex,
  }) {
    return selectedIndex != numberIndex
        ? SvgPicture.asset(
            iconPath,
            height: 24.sp,
            width: 24.sp,
            colorFilter: ColorFilter.mode(
              CustomColors.grey100,
              BlendMode.srcIn,
            ),
          )
        : Column(
            children: [
              Container(
                height: 4.h,
                width: 35.w,
                decoration: BoxDecoration(
                  color: CustomColors.primary100,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
              Container(
                width: 35.w,
                padding: EdgeInsets.only(
                  top: 2.h,
                  bottom: 2.h,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: _brightness == Brightness.dark
                        ? [
                            CustomColors.dark.withValues(alpha: .1),
                            CustomColors.dark.withValues(alpha: .8),
                            CustomColors.dark.withValues(alpha: .4),
                          ]
                        : [
                            CustomColors.light.withValues(alpha: .1),
                            CustomColors.light.withValues(alpha: .8),
                            CustomColors.light.withValues(alpha: .4),
                          ],
                  ),
                ),
                child: SvgPicture.asset(
                  iconPath,
                  height: 24.sp,
                  width: 24.sp,
                  colorFilter: ColorFilter.mode(
                    CustomColors.primary100,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ],
          );
  }
}
