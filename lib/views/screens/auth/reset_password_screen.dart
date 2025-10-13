




import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mc/routes/approutes.dart';
import 'package:mc/views/widgets/custom_button.dart';
import 'package:mc/views/widgets/custom_text.dart';
import 'package:mc/views/widgets/custom_text_field.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({super.key});

  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController confirmCtrl = TextEditingController();
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              margin: EdgeInsets.only(left: 20.w),
              decoration: const BoxDecoration(
                  color: Color(0xffEBEBEB),
                  shape: BoxShape.circle
              ),
              child: const Center(
                child: Icon(Icons.arrow_back),
              ),
            ),
          ),
          title: CustomText(
              text: "Reset Password", fontWeight: FontWeight.w500, fontSize: 18.h)),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Form(
          child: Column(
            children: [
              SizedBox(height: 58.h),
              CustomText(
                  text: "Reset Your Password",
                  fontSize: 24.h,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff0D0D0D)),
              CustomText(
                  maxline: 2,
                  text: "Please type something you’ll remember",
                  fontSize: 12.h,
                  bottom: 29.h,
                  top: 5.h),
              CustomTextField(
                  controller: passwordCtrl,
                  hintText: "Enter Your Email",
                  labelText: "Password",
                  isPassword: true),


              CustomTextField(
                  controller: confirmCtrl,
                  hintText: "Enter Your Confirm Email",
                  labelText: "Confirm Password",
                  isPassword: true),


              const Spacer(),
              CustomButtonGradiant(title: "RESET", onpress: () {
                Get.offAllNamed(AppRoutes.loginScreen);
              }),
              SizedBox(height: 100.h)
            ],
          ),
        ),
      ),
    );
  }
}
