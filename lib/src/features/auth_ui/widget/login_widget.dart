import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {

  late TextTheme _textTheme;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _textTheme = Theme.of(context).textTheme;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// TITLE
          Text(
            'Sebelum memulai, Perkenakan diri dulu ya 👋',
            style: _textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 14.sp,
            ),
            textAlign: TextAlign.center,
          ),

          SizedBox(
            height: 10.h,
          ),

          Text('Nama'),
          Text('Asal Sekolah'),
          Text('Nama'),
          Text('Nama'),
        ],
      ),
    );
  }
}
