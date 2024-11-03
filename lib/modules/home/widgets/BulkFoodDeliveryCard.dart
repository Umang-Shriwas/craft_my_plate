import 'package:craft_my_plate/widgets/GradientText.dart';
import 'package:craft_my_plate/widgets/LinearGradientContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BulkFoodDeliveryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(
                bottom: 20.h, left: 10.w, right: 10.w, top: 50.w),
            child: LinearGradientContainer(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  gradient: LinearGradient(
                    colors: [Color(0xff843ACF), Color(0xff460F7E)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 100), // Space for the image
                    // Text section
                    ListTile(
                      title: Text(
                        'Bulk Food Delivery',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: GradientText(
                        title: 'Order before 1 day',
                        textAlign: TextAlign.start,
                      ),
                      trailing: Container(
                        height: 40.h,
                        width: 40.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40.r)),
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
                            size: 20.h,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 8),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.h),
                      child: Text(
                        'Hassle-free food for your house parties & more!',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.h),
                      child: Divider(
                        thickness: 2.h,
                        color: Color(0xffFAE09E66),
                      ),
                    ),
                    SizedBox(height: 8.h),

                    // Icons and text section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildIconText('No Cooking'),
                        _buildIconText('No Cleaning'),
                        _buildIconText('No Hassle'),
                      ],
                    ),
                    SizedBox(height: 8.h),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: -10,
            left: 0,
            right: 20,
            child: Column(
              children: [
                // Delivery Box Image
                Image.asset(
                  'assets/icons/bulkfood.png', // Replace with your image asset
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper function to build icon + text row
  Widget _buildIconText(String text) {
    return Row(
      children: [
        Container(
          height: 15.h,
          width: 15.h,
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
              Icons.check,
              size: 15.h,
            ),
          ),
        ),
        // Container(child: Icon(Icons.check_circle, size: 24)),
        SizedBox(width: 4),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
