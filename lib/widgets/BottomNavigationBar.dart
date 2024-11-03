import 'package:craft_my_plate/core/values/colors.dart';
import 'package:craft_my_plate/modules/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 2; // Set the center as the default selected index

  final List<Widget> _pages = [
    Center(child: Text("Orders")),
    Center(child: Text("Events")),
    Center(child: HomeScreen()), // Home page for the center logo
    Center(child: Text("Submit Leads")),
    Center(child: Text("Offers")),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 8.0.h),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 4.0),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _buildNavItem(
              imagePath: 'assets/icons/orders.png',
              label: 'Orders',
              index: 0,
            ),
            _buildNavItem(
              imagePath: 'assets/icons/events.png',
              label: 'Events',
              index: 1,
            ),
            GestureDetector(
              onTap: () => _onItemTapped(2),
              child: Container(
                child: SvgPicture.asset(
                  'assets/icons/logo.svg',
                  width: 50.w,
                  height: 50.h,
                ),
              ),
            ),
            _buildNavItem(
              imagePath: 'assets/icons/submitleads.png',
              label: 'Submit Leads',
              index: 3,
            ),
            _buildNavItem(
              imagePath: 'assets/icons/offers.png',
              label: 'Offers',
              index: 4,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required String imagePath,
    required String label,
    required int index,
  }) {
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Container(
        width: 70.w,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              imagePath,
              width: 24.w,
              height: 24.h,
              color: _selectedIndex == index ? AppColor.purple : AppColor.grey1,
            ),
            SizedBox(height: 4.h),
            Text(
              label,
              style: TextStyle(
                color:
                    _selectedIndex == index ? AppColor.purple : AppColor.grey1,
                fontSize: 10.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
