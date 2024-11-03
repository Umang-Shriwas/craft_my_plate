import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GradientText extends StatelessWidget {
  const GradientText({
    super.key,
    required this.title,
    this.textAlign,
  });

  final String? title;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [
          Color(0xffefb31a),
          Color(0xfff9e7b7),
          Color(0xfffbc437),
          Color(0xfffae090),
        ],
        stops: [0, 0.25, 0.5, 0.75],
        begin: Alignment.bottomRight,
        end: Alignment.topLeft,
      ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
      child: Text(
        "${title}",
        textAlign: textAlign ?? TextAlign.center,
        style: TextStyle(
          color: Colors.white, // This color won't be shown due to ShaderMask
          fontSize: 14.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
