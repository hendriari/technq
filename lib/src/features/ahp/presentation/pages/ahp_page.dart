import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:technq/src/core/theme/custom_colors.dart';
import 'package:technq/src/core/utils/constants.dart';
import 'package:technq/src/core/widgets/button_widget.dart';
import 'package:technq/src/core/widgets/common_appbar_widget.dart';
import 'package:technq/src/features/ahp/presentation/bloc/ahp_bloc.dart';
import 'package:technq/src/features/ahp/presentation/bloc/ahp_event.dart';

class AhpPage extends StatelessWidget {
  const AhpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: CommonAppbarWidget(
        title: 'AHP',
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: 15.w,
          right: 15.w,
          bottom: 20.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// ANIMATION
            Lottie.asset(
              Constants.learningAnimation,
              height: 300.h,
              width: double.infinity,
            ),

            /// INFO
            Text(
              'Mari kita mulai mengenal bagaimana cara memilih jurusan teknik yang tepat untuk masa depan Anda. Bayangkan Anda sedang dihadapkan pada beberapa pilihan jurusan, dan Anda harus menentukan mana yang paling sesuai dengan minat, kemampuan, dan tujuan karier Anda. Di sinilah metode AHP membantu kita: sebuah pendekatan logis dan terstruktur untuk membuat keputusan.',
              style: textTheme.bodyMedium?.copyWith(
                fontSize: 16.sp,
              ),
              textAlign: TextAlign.justify,
            ),

            Text(
              '\nMisalnya, seperti saat Anda ingin membeli laptop: Anda mempertimbangkan performa, harga, dan daya tahan baterai. Sama halnya dengan memilih jurusan teknik, kita akan mengidentifikasi kriteria penting seperti minat pribadi, prospek kerja, biaya kuliah, dan kesesuaian dengan kemampuan akademik. Lalu, kita akan membandingkan pilihan jurusan seperti Teknik Informatika, Teknik Elektro, dan Teknik Sipil berdasarkan kriteria tersebut. Yuk, kita mulai prosesnya bersama!',
              style: textTheme.bodyMedium?.copyWith(
                fontSize: 16.sp,
              ),
              textAlign: TextAlign.justify,
            ),

            SizedBox(
              height: 15.h,
            ),

            /// BUTTON START
            ButtonWidget(
              buttonText: 'Mulai',
              buttonColor: CustomColors.primary100,
              buttonTextColor: Colors.white,
              onTap: () {
                context.read<AhpBloc>().add(AhpEvent.generatePairwiseMatrixInput(schoolType: 'sma'));
              },
            ),

            SizedBox(
              height: 15.h,
            ),
          ],
        ),
      ),
    );
  }
}
