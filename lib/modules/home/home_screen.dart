import 'package:craft_my_plate/core/values/colors.dart';
import 'package:craft_my_plate/modules/home/widgets/BulkFoodDeliveryCard.dart';
import 'package:craft_my_plate/modules/home/widgets/CateringService.dart';
import 'package:craft_my_plate/modules/home/widgets/FoodPlatter.dart';
import 'package:craft_my_plate/modules/home/widgets/GradientBox.dart';
import 'package:craft_my_plate/modules/home/widgets/OcassionalGrid.dart';
import 'package:craft_my_plate/widgets/GradientText.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white, // Background color for the screen
      appBar: AppBar(
        backgroundColor: Colors.amber.shade100,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(8.0.w),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.brown),
                child: Center(
                    child: Icon(Icons.person_rounded,
                        color: Colors.amber.shade100))),
          ),
        ),
        title: Row(
          children: [
            Text(
              "Hyderabad",
              style: GoogleFonts.getFont(
                "Lexend",
                color: AppColor.brown,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.keyboard_arrow_down, color: AppColor.brown),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0.w),
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Image.asset("assets/icons/explore.png"),
              label: GradientText(title: "Earn Rewards"),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.brown,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Colors.amber.shade100,
                image: DecorationImage(
                  image: AssetImage(
                      'assets/icons/bgimage.png'), // Replace with your image path
                  fit: BoxFit.cover, // Adjust the fit as needed
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20.h),
                    Text(
                      "Hello,",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont("Lexend",
                          fontSize: 22.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColor.brown),
                    ),
                    Text(
                      "Hyderabad!",
                      style: GoogleFonts.getFont(
                        "Lexend",
                        fontSize: 28.sp,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffAF7013),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GradientBox(
                            title1: "How It Works?",
                            gradientColors: [
                              Color(0xff4C1C7B),
                              Color(0xff17141E)
                            ],
                            imagePath: 'assets/icons/how.png'),
                        GradientBox(
                            title: "All Offers",
                            gradientColors: [
                              Color(0xff5E1515),
                              Color(0xff1E1414),
                            ],
                            imagePath: 'assets/icons/percent.png',
                            isArrowVisible: true),
                        GradientBox(
                            title: "Refer & Earn",
                            gradientColors: [
                              Color(0xff5E3315),
                              Color(0xff1E1914),
                            ],
                            imagePath: 'assets/icons/coin.png',
                            isArrowVisible: true),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.all(15.h),
              child: Row(
                children: [
                  Image.asset("assets/images/leftdivider.png"),
                  Text(
                    "Starts from ",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.getFont("Lexend",
                        fontWeight: FontWeight.w500, fontSize: 13.sp),
                  ),
                  Icon(
                    CupertinoIcons.group_solid,
                    color: Color(0xffAF7013),
                    size: 20.h,
                  ),
                  Text(
                    " 10 Guests Onwards!",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.getFont("Lexend",
                        fontWeight: FontWeight.w500, fontSize: 13.sp),
                  ),
                  Image.asset("assets/images/rightdivider.png"),
                ],
              ),
            ),
            BulkFoodDeliveryPage(),
            Cateringservice(),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Divider(
                  color: AppColor.grey1,
                ),
                Text(
                  "Whats Your Next Occasion?",
                  style: GoogleFonts.getFont("Lexend",
                      fontWeight: FontWeight.w500, fontSize: 18.sp),
                ),
                Divider(
                  color: AppColor.grey1,
                ),
              ],
            ),
            SizedBox(height: 10.h),
            OccasionGrid(),
            SizedBox(height: 20.h),
            Text(
              "Choose Your Platter",
              style: GoogleFonts.getFont("Lexend",
                  fontWeight: FontWeight.w500, fontSize: 18.sp),
            ),
            Padding(
              padding: EdgeInsets.all(15.h),
              child: Row(
                children: [
                  Text(
                    "Bulk Food Delivery",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.getFont("Lexend",
                        color: AppColor.purple,
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp),
                  ),
                ],
              ),
            ),
            FoodPlatterCarousel(),
            Padding(
              padding: EdgeInsets.all(15.h),
              child: Row(
                children: [
                  Text(
                    "Catering Service",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.getFont("Lexend",
                        color: AppColor.purple,
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp),
                  ),
                ],
              ),
            ),
            FoodPlatterCarousel(),
          ],
        ),
      ),
    );
  }
}
