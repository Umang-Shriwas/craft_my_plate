import 'package:craft_my_plate/core/values/colors.dart';
import 'package:craft_my_plate/widgets/GradientText.dart';
import 'package:craft_my_plate/widgets/LinearGradientContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Cateringservice extends StatelessWidget {
  const Cateringservice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LinearGradientContainer(
          child: Container(
            height: 150.h,
            width: 340.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Stack(
              children: [
                // Background image with rounded corners
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.asset(
                    'assets/images/cateringservice.png',
                    fit: BoxFit.fill,
                    width: double.infinity,
                    height: 200.h,
                  ),
                ),
                // Gradient overlay
                Container(
                  width: double.infinity,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF300956).withOpacity(1.0),
                        Color(0xFF3F007E).withOpacity(0.5),
                        Color(0xFF240146).withOpacity(0.0),
                      ],
                    ),
                  ),
                ),
                // Card content
                Padding(
                  padding: EdgeInsets.all(20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Catering Service',
                        style: GoogleFonts.getFont("Lexend",
                            color: AppColor.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18.sp),
                      ),
                      GradientText(
                        title: 'Order before 2 days',
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 130.w,
                            child: Text(
                              'Suitable for small to large gatherings',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                          LinearGradientContainer(
                            borderRadius: BorderRadius.circular(20.r),
                            child: Container(
                              height: 30.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                color: Color(0xffFF300956),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  GradientText(title: "See Platters"),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Color(0xfffbc437),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Container(
            height: 25.h,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
              gradient: LinearGradient(
                colors: [
                  Color(0xffefb31a),
                  Color(0xfff9e7b7),
                  Color(0xfffbc437),
                  Color(0xfffae090),
                ],
              ),
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(15.r)),
            ),
            child: Center(
              child: Text(
                "Service & Live Cooking Available!",
                style: GoogleFonts.getFont("Lexend",
                    fontWeight: FontWeight.w600, fontSize: 12.sp),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
