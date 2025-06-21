import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:technq/src/core/shared/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:technq/src/core/shared/features/auth/presentation/bloc/auth_event.dart';
import 'package:technq/src/core/shared/features/auth/presentation/bloc/auth_state.dart';
import 'package:technq/src/core/theme/custom_colors.dart';
import 'package:technq/src/core/utils/helper.dart';
import 'package:technq/src/core/widgets/button_widget.dart';
import 'package:technq/src/core/widgets/form_field_widget.dart';
import 'package:technq/src/core/widgets/loading_widget.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  late TextTheme _textTheme;
  late Brightness _brightness;
  late TextEditingController _nameController;
  late TextEditingController _schoolController;
  late ValueNotifier<String> _schoolType;
  late GlobalKey<FormState> _formKey;
  late Helper _helper;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _schoolController = TextEditingController();
    _schoolType = ValueNotifier('sma');
    _formKey = GlobalKey<FormState>();
    _helper = Helper();
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
    _nameController.dispose();
    _schoolController.dispose();
    _schoolType.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = _brightness == Brightness.dark;
    final paddingBottom = MediaQuery.of(context).viewInsets.bottom;
    return SafeArea(
      child: Form(
        key: _formKey,
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(
            left: 15.w,
            right: 15.w,
            top: 15.h,
            bottom: paddingBottom + 15.h,
          ),
          decoration: BoxDecoration(
            color: isDark ? CustomColors.dark : CustomColors.light,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r),
            ),
            boxShadow: [
              BoxShadow(
                color: isDark
                    ? CustomColors.light.withValues(alpha: 2)
                    : CustomColors.dark,
                blurStyle: BlurStyle.solid,
                blurRadius: 5,
              ),
            ],
          ),
          child: SingleChildScrollView(
            child: ValueListenableBuilder(
                valueListenable: _schoolType,
                builder: (context, c, v) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      /// SCHOOL TYPE
                      _buildSchoolTypeWidget(isDark),

                      SizedBox(
                        height: 20.h,
                      ),

                      /// CONTENT
                      _buildContent(isDark),

                      SizedBox(
                        height: 30.h,
                      ),

                      /// BUTTON ACTION
                      _buildButtonAction(),
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }

  /// SCHOOL TYPE
  Widget _buildSchoolTypeWidget(bool isDark) {
    return Container(
      height: 40.w,
      width: 250.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: isDark ? CustomColors.grey100 : CustomColors.grey400,
        ),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.r),
          topLeft: Radius.circular(20.r),
        ),
      ),
      child: Row(
        children: [
          /// SMA
          Flexible(
            child: InkWell(
              onTap: () {
                _schoolType.value = 'sma';
                _nameController.clear();
                _schoolController.clear();
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: _schoolType.value == 'sma'
                      ? CustomColors.primary100
                      : null,
                  boxShadow: _schoolType.value == 'sma'
                      ? [
                          BoxShadow(
                            color: isDark
                                ? CustomColors.light.withValues(alpha: 2)
                                : Colors.black54,
                            blurRadius: 3,
                            offset: Offset(1, .1),
                          ),
                        ]
                      : null,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.r),
                    topLeft: Radius.circular(20.r),
                  ),
                ),
                child: Text(
                  'SMA',
                  style: _textTheme.bodyLarge?.copyWith(
                    fontSize: 16.sp,
                    color: _schoolType.value == 'sma' ? Colors.white : null,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          /// SMK
          Flexible(
            child: InkWell(
              onTap: () {
                _schoolType.value = 'smk';
                _nameController.clear();
                _schoolController.clear();
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: _schoolType.value == 'smk'
                      ? CustomColors.primary100
                      : null,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.r),
                    topLeft: Radius.circular(20.r),
                  ),
                  boxShadow: _schoolType.value == 'smk'
                      ? [
                          BoxShadow(
                            color: isDark
                                ? CustomColors.light.withValues(alpha: 2)
                                : Colors.black54,
                            blurRadius: 3,
                            offset: Offset(-1, .1),
                          ),
                        ]
                      : null,
                ),
                child: Text(
                  'SMK',
                  style: _textTheme.bodyLarge?.copyWith(
                    fontSize: 16.sp,
                    color: _schoolType.value == 'smk' ? Colors.white : null,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// BUILD CONTENT
  Widget _buildContent(bool isDark) {
    return Table(
      columnWidths: {
        0: FlexColumnWidth(.35),
        1: FlexColumnWidth(),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        /// NAMA
        TableRow(
          children: [
            TableCell(
              child: Text(
                'Nama',
                style: _textTheme.bodyMedium?.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TableCell(
              child: FormFieldWidget(
                textEditingController: _nameController,
                outlineBorderColor: CustomColors.grey400,
                borderWidth: 1,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.w, horizontal: 20.h),
                fillColor: isDark ? CustomColors.dark : CustomColors.light,
                formFieldValidator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama tidak boleh kosong!';
                  }
                  return null;
                },
              ),
            ),
          ],
        ),

        /// SPACING
        TableRow(
          children: List.generate(
            2,
            (i) => SizedBox(
              height: 14.h,
            ),
          ),
        ),

        /// SEKOLAH
        TableRow(
          children: [
            TableCell(
              child: Text(
                'Nama ${_schoolType.value == 'sma' ? "SMA" : "SMK"}',
                style: _textTheme.bodyMedium?.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TableCell(
              child: FormFieldWidget(
                textEditingController: _schoolController,
                outlineBorderColor: CustomColors.grey400,
                borderWidth: 1,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.w, horizontal: 20.h),
                fillColor: isDark ? CustomColors.dark : CustomColors.light,
                formFieldValidator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama sekolah tidak boleh kosong!';
                  }
                  return null;
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// BUTTON ACTION
  Widget _buildButtonAction() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        /// CANCEL BUTTON
        ButtonWidget(
          onTap: () => context.pop(),
          buttonText: 'Batal',
          maximumSize: Size(100.w, 46.h),
          minimumSize: Size(100.w, 46.h),
          buttonTextColor: CustomColors.redLight,
          borderColor: CustomColors.redLight,
        ),

        SizedBox(width: 10.w,),

        /// CONFIRM BUTTON
        BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            state.whenOrNull(
              failed: (_, message) {
                _helper.showToast(
                    message: message, backGroundColor: CustomColors.redLight);
              },
              successCreateAccount: (user) {
                if (user != null) {
                  _helper.showToast(message: 'Success created account');
                  context.goNamed('main-menu');
                } else {
                  _helper.showToast(
                      message: 'Terjadi kesalahan, mohon ulangi lagi',
                      backGroundColor: CustomColors.redLight);
                }
              },
            );
          },
          builder: (context, state) => ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                FocusScope.of(context).requestFocus(FocusNode());
                context.read<AuthBloc>().add(AuthEvent.createAccountEvent(
                    name: _nameController.text.trim(),
                    schoolType: _schoolType.value,
                    schoolName: _schoolController.text.trim()));
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: CustomColors.primary100,
              minimumSize: Size(100.w, 46.h),
              maximumSize: Size(100.w, 46.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.r),
              ),
            ),
            child: state.maybeWhen(
              loadingCreateAccount: (_) => LoadingWidget(
                isWave: false,
                treeBounceColor: Colors.white,
                size: 16.sp,
              ),
              orElse: () => Text(
                'Login',
                style: _textTheme.bodyLarge?.copyWith(
                  fontSize: 16.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

Future<bool?> showLoginModalBottomSheet(BuildContext context) async {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    builder: (context) => LoginWidget(),
  );
}
