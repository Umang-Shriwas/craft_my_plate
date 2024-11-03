import 'package:craft_my_plate/modules/login/SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return Builder(
          builder: (context) {
            ScreenUtil.init(context);
            return GetMaterialApp(
              themeMode: ThemeMode.light,
              debugShowCheckedModeBanner: false,
              title: 'Craft My Plate',
              home: SplashScreen(),
            );
          },
        );
      },
    );
  }
}
