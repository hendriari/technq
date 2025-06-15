import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technq/src/core/shared/auth/presentation/bloc/auth_bloc.dart';
import 'package:technq/src/core/shared/auth/presentation/bloc/auth_state.dart';
import 'package:technq/src/core/shared/auth/presentation/widget/update_school_widget.dart';
import 'package:technq/src/core/shared/brightness_theme/presentation/bloc/brightness_theme_bloc.dart';
import 'package:technq/src/core/shared/brightness_theme/presentation/bloc/brightness_theme_event.dart';
import 'package:technq/src/core/shared/brightness_theme/presentation/bloc/brightness_theme_state.dart';
import 'package:technq/src/core/theme/custom_colors.dart';
import 'package:technq/src/core/widgets/common_appbar_widget.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  late TextTheme _textTheme;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _textTheme = Theme.of(context).textTheme;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbarWidget(title: 'Setting'),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 15.h,
          horizontal: 15.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// INFO TITLE
            Text(
              'Informasi',
              style: _textTheme.bodyLarge?.copyWith(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: CustomColors.primary100,
              ),
            ),

            SizedBox(
              height: 5.h,
            ),

            /// USER
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  /// NAMA PENGGUNA
                  _buildRowWidget(
                    icon: Icons.person_2_outlined,
                    title: state.user?.name ?? '-',
                  ),

                  Divider(),

                  /// NAMA SEKOLAH
                  _buildRowWidget(
                    icon: Icons.school_outlined,
                    title:
                        '${state.user?.schoolName ?? '-'} (${state.user?.schoolType?.toUpperCase()})',
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20.h,
            ),

            /// SETTING TITLE
            Text(
              'Pengaturan',
              style: _textTheme.bodyLarge?.copyWith(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: CustomColors.primary100,
              ),
            ),

            SizedBox(
              height: 5.h,
            ),

            /// UPDATE SEKOLAH
            Bounceable(
              onTap: () {
                showUpdateSchoolModalBottomSheet(context);
              },
              child: _buildRowWidget(
                icon: CupertinoIcons.pen,
                title: 'Update Sekolah',
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 22.sp,
                ),
              ),
            ),

            Divider(),

            /// DARK THEME
            BlocBuilder<BrightnessThemeBloc, BrightnessThemeState>(
              builder: (context, state) {
                return _buildRowWidget(
                  icon: CupertinoIcons.moon,
                  title: 'Tema Gelap',
                  trailing: Switch(
                    padding: EdgeInsets.zero,
                    activeColor: CustomColors.primary100,
                    value: state.isDark ?? false,
                    onChanged: (value) {
                      context
                          .read<BrightnessThemeBloc>()
                          .add(SaveCurrentThemeEvent(value));
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRowWidget({
    required IconData icon,
    required String title,
    Widget? trailing,
  }) =>
      Padding(
        padding: EdgeInsets.symmetric(
          vertical: 5.h,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 20.sp,
            ),
            SizedBox(
              width: 8.w,
            ),
            Expanded(
              child: Text(
                title,
                style: _textTheme.bodyMedium?.copyWith(
                  fontSize: 16.sp,
                ),
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            trailing ?? SizedBox(),
          ],
        ),
      );
}
