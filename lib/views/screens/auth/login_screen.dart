import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mc/helpers/toast_message_helper.dart';
import 'package:mc/routes/approutes.dart';
import 'package:mc/utils/app_colors.dart';
import 'package:mc/views/widgets/custom_button.dart';
import 'package:mc/views/widgets/custom_text.dart';
import 'package:mc/views/widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          title: CustomText(
              text: "Sign In", fontWeight: FontWeight.w500, fontSize: 18.h)),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 128.h),
            CustomText(
                text: "Welcome Back!",
                fontSize: 24.h,
                fontWeight: FontWeight.w600,
                color: const Color(0xff0D0D0D)),
            CustomText(
                text: "Make sure that you already have an account.",
                fontSize: 12.h,
                bottom: 29.h,
                top: 5.h),
            CustomTextField(
                controller: emailCtrl,
                hintText: "Enter Your Email",
                labelText: "Email",
                isEmail: true),
            CustomTextField(
                controller: passwordCtrl,
                hintText: "Password",
                labelText: "Password",
                isPassword: true),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: (){

                  Get.toNamed(AppRoutes.forgotPasswordScreen, arguments: {
                    "email" : emailCtrl.text
                  });

                },
                child: CustomText(
                    text: "Forgot Password", color: AppColors.primaryColor),
              ),
            ),
            const Spacer(),
            CustomButtonGradiant(title: "SIGN IN", onpress: () {
              Get.offAllNamed(AppRoutes.merchandiserBottomNavBar);
            }),
            SizedBox(height: 100.h)
          ],
        ),
      ),
    );
  }
}
