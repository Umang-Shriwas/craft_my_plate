import 'dart:async';
import 'package:craft_my_plate/modules/login/Login_SignUp_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:craft_my_plate/core/values/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Get.off(LoginSignUpPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.purple,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/mainLogo.svg"),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Craft My Plate",
              textAlign: TextAlign.left,
              style: GoogleFonts.getFont(
                "Lexend",
                color: Color(0xfff7e5b7),
                fontWeight: FontWeight.w400,
                fontSize: 30.sp,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              "You customise, We cater",
              textAlign: TextAlign.left,
              style: GoogleFonts.getFont(
                "Courgette",
                color: Color(0xffD5B67D),
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
