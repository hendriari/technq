import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technq/src/core/theme/custom_colors.dart';
import 'package:technq/src/core/utils/constants.dart';
import 'package:technq/src/core/widgets/common_appbar_widget.dart';
import 'package:technq/src/features/dashboard/domain/entities/fakultas_entities.dart';

class DetailFakultasPage extends StatelessWidget {
  final FakultasEntities? fakultas;

  const DetailFakultasPage({
    super.key,
    this.fakultas,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final brightness = Theme.of(context).brightness;
    return Scaffold(
      appBar: CommonAppbarWidget(
        title: fakultas?.name ?? '-',
        centerTitle: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: 20.h,
          ),
          child: Column(
            children: [
              /// IMAGE
              Hero(
                tag: '${fakultas?.id}',
                child: Container(
                  width: double.infinity,
                  height: 200.h,
                  decoration: BoxDecoration(
                    color: brightness == Brightness.dark
                        ? CustomColors.dark
                        : CustomColors.light,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        fakultas?.image ?? Constants.notFoundImage,
                      ),
                    ),
                  ),
                ),
              ),

              /// DESKRIPSI
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 15.h,
                  horizontal: 15.w,
                ),
                child: Text(
                  fakultas?.description ?? '-',
                  style: textTheme.bodyMedium?.copyWith(
                    fontSize: 16.sp,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
