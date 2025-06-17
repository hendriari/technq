import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technq/src/core/theme/custom_colors.dart';
import 'package:technq/src/features/ahp/presentation/bloc/ahp_bloc.dart';
import 'package:technq/src/features/ahp/presentation/bloc/ahp_event.dart';
import 'package:technq/src/features/ahp/presentation/bloc/ahp_state.dart';
import 'package:technq/src/features/ahp/presentation/widget/show_ahp_choice_dialog.dart';

class ListAlternatifWidget extends StatelessWidget {
  const ListAlternatifWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final sizeWidth = MediaQuery.of(context).size.width / 4;
    final brightness = Theme.of(context).brightness;
    final isDark = brightness == Brightness.dark;
    return BlocBuilder<AhpBloc, AhpState>(
      builder: (context, state) {
        final alternativePerCriteria =
            state.pairwiseInputs?.inputAlternative[state.alternativeIndex ?? 0];
        return ListView.builder(
          itemCount: alternativePerCriteria?.alternative.length ?? 0,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            var alternative = alternativePerCriteria?.alternative[index];
            final totalCount = alternativePerCriteria?.alternative.length ?? 0;
            return Column(
              children: [
                /// DETAIL ALTERNATIVE
                Row(
                  children: [
                    /// LEFT ITEM
                    SizedBox(
                      width: sizeWidth,
                      child: Text(
                        alternative?.left.name ?? '-',
                        style: textTheme.bodyMedium?.copyWith(
                          fontSize: 16.sp,
                        ),
                      ),
                    ),

                    /// SELECT VALUE COMPARISON
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          /// SHOW COMPARISON SCALE DIALOG
                          showAhpChoiceDialog(
                            context,
                            leftItem: alternative?.left.name,
                            rightItem: alternative?.right.name,
                            onSelected: (important, scale) {
                              if (scale != null && important != null) {
                                context.read<AhpBloc>().add(AhpEvent
                                        .updatePairwiseMatrixAlternative(
                                      id: alternativePerCriteria?.criteria.id,
                                      alternativeId: alternative?.id,
                                      isLeftMoreImportant: important,
                                      referenceValue: scale,
                                    ));
                              }
                            },
                          );
                        },
                        child: Container(
                          height: 50.h,
                          width: double.infinity,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.symmetric(
                            horizontal: 5.w,
                            vertical: 1.h,
                          ),
                          margin: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            border: Border.all(
                                color: isDark
                                    ? CustomColors.light.withValues(alpha: 2)
                                    : CustomColors.dark,
                                width: 1),
                          ),
                          child: Text(
                            alternative?.preferenceValue != null
                                ? '${alternative?.preferenceValue} - ${alternative?.isLeftMoreImportant == true ? 'kiri lebih prioritas' : 'kanan lebih prioritas'}'
                                : 'Mana yang lebih penting ?',
                            style: textTheme.bodyMedium?.copyWith(
                              fontSize: 16.sp,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),

                    /// RIGHT ITEM
                    SizedBox(
                      width: sizeWidth,
                      child: Text(
                        alternative?.right.name ?? '-',
                        style: textTheme.bodyMedium?.copyWith(
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ],
                ),

                /// DIVIDER
                index != (totalCount - 1)
                    ? Divider(
                        color:
                            isDark ? CustomColors.grey200 : CustomColors.dark,
                      )
                    : SizedBox(),
              ],
            );
          },
        );
      },
    );
  }
}
