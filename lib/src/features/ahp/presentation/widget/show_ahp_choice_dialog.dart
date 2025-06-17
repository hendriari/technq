import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:technq/src/core/theme/custom_colors.dart';
import 'package:technq/src/core/utils/enums.dart';
import 'package:technq/src/core/utils/helper.dart';

class ShowAhpChoiceWidget extends StatefulWidget {
  final String? leftItem;
  final String? rightItem;
  final Function(bool?, int?) onSelected;

  const ShowAhpChoiceWidget({
    super.key,
    required this.leftItem,
    required this.rightItem,
    required this.onSelected,
  });

  @override
  State<ShowAhpChoiceWidget> createState() => _ShowAhpChoiceWidgetState();
}

class _ShowAhpChoiceWidgetState extends State<ShowAhpChoiceWidget> {
  late TextTheme _textTheme;
  late Brightness _brightness;
  final ValueNotifier<int?> _scale = ValueNotifier(null);
  final ValueNotifier<ChoiceMoreImportant?> _important = ValueNotifier(null);
  late Helper _helper;


  @override
  void initState() {
    super.initState();
    _helper = Helper();
  }

  @override
  void dispose() {
    super.dispose();
    _scale.dispose();
    _important.dispose();

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
    return SafeArea(
      child: Dialog(
        backgroundColor: Colors.transparent,
        child: ValueListenableBuilder(
            valueListenable: _important,
            builder: (context, v, c) {
              return ValueListenableBuilder(
                  valueListenable: _scale,
                  builder: (context, v, c) {
                    return Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 20.h,
                        horizontal: 15.w,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: isDark ? CustomColors.dark : CustomColors.light,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          /// QUESTION
                          Text(
                            'Menurut Anda\n${widget.leftItem} (kiri) atau ${widget.rightItem} (kanan)\nMana yang lebih penting ?',
                            style: _textTheme.bodyLarge?.copyWith(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),

                          SizedBox(
                            height: 10.h,
                          ),

                          /// BUTTON OPTION
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                              3,
                              (i) => Flexible(
                                child: Bounceable(
                                  onTap: () {
                                    switch (i) {
                                      case 1:
                                        _important.value =
                                            ChoiceMoreImportant.same;
                                        _scale.value = 1;
                                      case 0:
                                        _important.value =
                                            ChoiceMoreImportant.left;
                                      case 2:
                                        _important.value =
                                            ChoiceMoreImportant.right;
                                    }
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 10.h,
                                    ),
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 5.w,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.r),
                                      color: (_scale.value == 1 &&
                                              i == 1 &&
                                              _important.value ==
                                                  ChoiceMoreImportant.same)
                                          ? CustomColors.primary100
                                          : _important.value ==
                                                      ChoiceMoreImportant
                                                          .left &&
                                                  i == 0
                                              ? CustomColors.primary100
                                              : _important.value ==
                                                          ChoiceMoreImportant
                                                              .right &&
                                                      i == 2
                                                  ? CustomColors.primary100
                                                  : (isDark
                                                      ? CustomColors.grey200
                                                      : Colors.transparent),
                                      border: Border.all(
                                          color: isDark
                                              ? CustomColors.light
                                                  .withValues(alpha: 2)
                                              : CustomColors.dark,
                                          width: 1),
                                    ),
                                    child: Center(
                                      child: Text(
                                        i == 1
                                            ? 'Sama'
                                            : i == 0
                                                ? widget.leftItem ?? '-'
                                                : widget.rightItem ?? '-',
                                        style: _textTheme.bodyLarge?.copyWith(
                                          fontSize: 16.sp,
                                          color: ((_important.value ==
                                                          ChoiceMoreImportant
                                                              .same &&
                                                      i == 1) ||
                                                  (_important.value ==
                                                          ChoiceMoreImportant
                                                              .right &&
                                                      i == 2) ||
                                                  (_important.value ==
                                                          ChoiceMoreImportant
                                                              .left &&
                                                      i == 0))
                                              ? Colors.white
                                              : isDark
                                                  ? Colors.white
                                                  : Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 20.h,
                          ),

                          /// SAATY SCALE
                          _important.value != null &&
                                  _important.value != ChoiceMoreImportant.same
                              ? Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    /// TITLE
                                    Text(
                                      'Berapa rating untuk pilihanmu ?',
                                      style: _textTheme.bodyLarge?.copyWith(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),

                                    SizedBox(
                                      height: 10.h,
                                    ),

                                    /// DETAIL SAATY SCALE
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: List.generate(
                                        8,
                                        (i) => Flexible(
                                          child: Bounceable(
                                            onTap: () {
                                              _scale.value = i + 2;
                                            },
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                vertical: 10.h,
                                                horizontal: 10.w,
                                              ),
                                              width: double.infinity,
                                              alignment: Alignment.center,
                                              margin: EdgeInsets.symmetric(
                                                horizontal: 2.w,
                                              ),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: isDark
                                                        ? CustomColors.light
                                                            .withValues(
                                                                alpha: 2)
                                                        : CustomColors.dark,
                                                    width: 1),
                                                color: _scale.value == i + 2
                                                    ? CustomColors.primary100
                                                    : isDark
                                                        ? CustomColors.grey200
                                                        : Colors.transparent,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Text(
                                                '${i + 2}',
                                                style: _textTheme.bodyLarge
                                                    ?.copyWith(
                                                  fontSize: 18.sp,
                                                  color: _scale.value == i + 2
                                                      ? Colors.white
                                                      : isDark
                                                          ? Colors.white
                                                          : Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    SizedBox(
                                      height: 20.h,
                                    ),
                                  ],
                                )
                              : SizedBox(
                                  height: 20.h,
                                ),

                          /// BUTTON CANCEL AND SAVE
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                              2,
                              (i) => Flexible(
                                child: Bounceable(
                                  onTap: () {
                                    if (i == 0) {
                                      context.pop();
                                    } else {
                                      if (_important.value == null) {
                                        _helper.showToast(
                                            message: 'Mohon tentukan prioritas',
                                            backGroundColor:
                                                CustomColors.redLight);
                                      } else if (_scale.value == null) {
                                        _helper.showToast(
                                            message:
                                                'Mohon pilih rating prioritas',
                                            backGroundColor:
                                                CustomColors.redLight);
                                      } else {
                                        bool important = _important.value ==
                                                ChoiceMoreImportant.left
                                            ? true
                                            : _important.value ==
                                                    ChoiceMoreImportant.same
                                                ? true
                                                : false;

                                        widget.onSelected
                                            .call(important, _scale.value);
                                        context.pop();
                                      }
                                    }
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 10.h,
                                      horizontal: 10.w,
                                    ),
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 5.w,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.r),
                                      color: isDark
                                          ? CustomColors.grey200
                                          : i == 0
                                              ? CustomColors.redLight
                                              : CustomColors.primary100,
                                      border: Border.all(
                                          color: isDark
                                              ? CustomColors.light
                                                  .withValues(alpha: 2)
                                              : Colors.transparent,
                                          width: 1),
                                    ),
                                    child: Text(
                                      i == 0 ? 'Batal' : 'Simpan',
                                      style: _textTheme.bodyLarge?.copyWith(
                                        fontSize: 18.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            }),
      ),
    );
  }
}

Future<bool?> showAhpChoiceDialog(
  BuildContext context, {
  required Function(bool?, int?) onSelected,
  required String? leftItem,
  required String? rightItem,
}) async {
  return showGeneralDialog(
    context: context,
    barrierLabel: 'PAIRWISE COMPARISON SCALE',
    barrierDismissible: true,
    pageBuilder: (context, anim1, anim2) => ShowAhpChoiceWidget(
      onSelected: onSelected,
      leftItem: leftItem,
      rightItem: rightItem,
    ),
  );
}
