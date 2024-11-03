import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OccasionGrid extends StatelessWidget {
  final List<Map<String, String>> occasions = [
    {'name': 'Birthday Party', 'image': 'assets/images/BirthdayParty.png'},
    {'name': 'Coctail Party', 'image': 'assets/images/CocktailParty.png'},
    {'name': 'Engagement', 'image': 'assets/images/Engagement.png'},
    {'name': 'Farmhouse Party', 'image': 'assets/images/FarmhouseParty.png'},
    {'name': 'Get Together', 'image': 'assets/images/Get together.png'},
    {'name': 'Haldi', 'image': 'assets/images/Haldi.png'},
    {'name': 'House Party', 'image': 'assets/images/HouseParty.png'},
    {'name': 'House Warming', 'image': 'assets/images/HouseWarming.png'},
    {'name': 'Kitty Party', 'image': 'assets/images/KittyParty.png'},
    {'name': 'Office Party', 'image': 'assets/images/OfficeParty.png'},
    {'name': 'Pooja', 'image': 'assets/images/Pooja.png'},
    {'name': 'Reception', 'image': 'assets/images/Reception.png'},
    {'name': 'Wedding', 'image': 'assets/images/Wedding.png'},
    {'name': 'Workshop', 'image': 'assets/images/Workshop.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        height: 250.h, // Adjust the height as needed
        child: GridView.builder(
          scrollDirection: Axis.horizontal,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of rows
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 1, // Aspect ratio to make each item square
          ),
          itemCount: occasions.length,
          itemBuilder: (context, index) {
            return OccasionTile(
              name: occasions[index]['name']!,
              imagePath: occasions[index]['image']!,
            );
          },
        ),
      ),
    );
  }
}

class OccasionTile extends StatelessWidget {
  final String name;
  final String imagePath;

  OccasionTile({required this.name, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w, // Adjust width as needed to fit 7 items per row
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.r),
        child: Stack(
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.black.withOpacity(0.5),
              child: Padding(
                padding: EdgeInsets.only(top: 70.h),
                child: Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
