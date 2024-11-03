import 'package:craft_my_plate/widgets/GradientText.dart';
import 'package:craft_my_plate/widgets/LinearGradientContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// New LinearGradientContainer widget

class GradientBox extends StatelessWidget {
  const GradientBox({
    super.key,
    this.title,
    this.title1,
    required this.gradientColors,
    required this.imagePath,
    this.isArrowVisible = false,
  });

  final String? title;
  final String? title1;
  final List<Color> gradientColors;
  final String imagePath;
  final bool isArrowVisible;

  @override
  Widget build(BuildContext context) {
    return LinearGradientContainer(
      child: Container(
        width: 90.w,
        height: 100.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          gradient: RadialGradient(
            colors: gradientColors,
            stops: [0, 1],
            center: Alignment.center,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (title1 != null && title1!.isNotEmpty)
                GradientText(title: title1 ?? ""),
              Image.asset(imagePath, height: 35.h),
              SizedBox(height: 10.h),
              if (title != null && title!.isNotEmpty)
                GradientText(title: title ?? ""),
              Visibility(
                visible: isArrowVisible,
                child: Container(
                  height: 15.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffefb31a),
                        Color(0xfff9e7b7),
                        Color(0xfffbc437),
                        Color(0xfffae090),
                      ],
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_forward,
                      size: 15.h,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
