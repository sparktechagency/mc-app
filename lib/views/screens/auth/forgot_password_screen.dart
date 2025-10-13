


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mc/routes/approutes.dart';
import 'package:mc/views/widgets/custom_button.dart';
import 'package:mc/views/widgets/custom_text.dart';
import 'package:mc/views/widgets/custom_text_field.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController emailCtrl = TextEditingController();

  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  @override
  void initState() {
    var data = Get.arguments;
    emailCtrl.text = data["email"];
    super.initState();
  }

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
              text: "Sign In", fontWeight: FontWeight.w500, fontSize: 18.h)),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Form(
          child: Column(
            children: [
              SizedBox(height: 58.h),
              CustomText(
                  text: "Forget Your Password?",
                  fontSize: 24.h,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff0D0D0D)),
              CustomText(
                maxline: 2,
                  text: "Don’t worry! It happens. Please enter the email associated with your account.",
                  fontSize: 12.h,
                  bottom: 29.h,
                  top: 5.h),
              CustomTextField(
                  controller: emailCtrl,
                  hintText: "Enter Your Email",
                  labelText: "Email",
                  isEmail: true),


              const Spacer(),
              CustomButtonGradiant(title: "SEND CODE", onpress: () {
                Get.toNamed(AppRoutes.verifyScreen);
              }),
              SizedBox(height: 100.h)
            ],
          ),
        ),
      ),
    );
  }
}
