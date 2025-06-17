import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:lottie/lottie.dart';
import 'package:technq/src/core/shared/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:technq/src/core/theme/custom_colors.dart';
import 'package:technq/src/core/utils/constants.dart';
import 'package:technq/src/core/utils/helper.dart';
import 'package:technq/src/core/widgets/button_widget.dart';
import 'package:technq/src/core/widgets/common_appbar_widget.dart';
import 'package:technq/src/core/widgets/loading_overlay_widget.dart';
import 'package:technq/src/features/ahp/presentation/bloc/ahp_bloc.dart';
import 'package:technq/src/features/ahp/presentation/bloc/ahp_event.dart';
import 'package:technq/src/features/ahp/presentation/bloc/ahp_state.dart';

class AhpPage extends StatefulWidget {
  const AhpPage({super.key});

  @override
  State<AhpPage> createState() => _AhpPageState();
}

class _AhpPageState extends State<AhpPage> {
  late Helper _helper;
  late TextTheme _textTheme;

  @override
  void initState() {
    super.initState();
    _helper = Helper();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _textTheme = Theme.of(context).textTheme;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbarWidget(
        title: 'AHP',
      ),
      body: LoadingOverlayWidget(
        child: SingleChildScrollView(
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
                style: _textTheme.bodyMedium?.copyWith(
                  fontSize: 16.sp,
                ),
                textAlign: TextAlign.justify,
              ),

              Text(
                '\nMisalnya, seperti saat Anda ingin membeli laptop: Anda mempertimbangkan performa, harga, dan daya tahan baterai. Sama halnya dengan memilih jurusan teknik, kita akan mengidentifikasi kriteria penting seperti minat pribadi, prospek kerja, biaya kuliah, dan kesesuaian dengan kemampuan akademik. Lalu, kita akan membandingkan pilihan jurusan seperti Teknik Informatika, Teknik Elektro, dan Teknik Sipil berdasarkan kriteria tersebut. Yuk, kita mulai prosesnya bersama!',
                style: _textTheme.bodyMedium?.copyWith(
                  fontSize: 16.sp,
                ),
                textAlign: TextAlign.justify,
              ),

              SizedBox(
                height: 15.h,
              ),

              /// BUTTON START
              BlocConsumer<AhpBloc, AhpState>(
                listener: (context, state) {
                  state.whenOrNull(
                    loadingGeneratePairwiseInput: (_, __, ___) =>
                        context.loaderOverlay.show(),
                    successGeneratePairwiseInput: (_, __, ___) {
                      context.loaderOverlay.hide();
                      context.goNamed('detail-ahp');
                    },
                    failed: (_, __, ___, message) {
                      context.loaderOverlay.hide();
                      _helper.showToast(
                        message: message,
                        backGroundColor: CustomColors.redLight,
                      );
                    },
                  );
                },
                builder: (context, state) {
                  return ButtonWidget(
                    buttonText: 'Mulai',
                    buttonColor: CustomColors.primary100,
                    buttonTextColor: Colors.white,
                    onTap: () {
                      final userState = context.read<AuthBloc>().state;
                      context.read<AhpBloc>().add(
                          AhpEvent.generatePairwiseMatrixInput(
                              schoolType: userState.user?.schoolType ?? 'sma'));
                    },
                  );
                },
              ),

              SizedBox(
                height: 15.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
