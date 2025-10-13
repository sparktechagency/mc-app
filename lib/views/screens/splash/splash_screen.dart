import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mc/routes/approutes.dart';

import '../../../global/custom_assets/assets.gen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {

  late final AnimationController _controller;


  @override
  void initState() {

    Future.delayed(const Duration(seconds: 2),(){
      Get.offAllNamed(AppRoutes.loginScreen);
    });


    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat();

    super.initState();
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/Splash.png"), fit: BoxFit.cover)
        ),

        child: Column(
          children: [

           const Spacer(),



            RotationTransition(
              turns: _controller,
              child: Assets.images.splashLoading.image(
                width: 60.w,
                height: 60.h,
              ),
            ),


            SizedBox(height: 100.h)




          ],
        ),
      )
    );
  }
}
