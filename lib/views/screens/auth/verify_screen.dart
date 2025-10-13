




import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mc/controller/auth_controller.dart';
import 'package:mc/routes/approutes.dart';
import 'package:mc/views/widgets/custom_button.dart';
import 'package:mc/views/widgets/custom_text.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../helpers/toast_message_helper.dart';
import '../../../utils/app_colors.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  AuthController authController = Get.put(AuthController());
  TextEditingController pinCtrl = TextEditingController();

  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  @override
  void initState() {
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
              text: "Verify", fontWeight: FontWeight.w500, fontSize: 18.h)),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Form(
          child: Column(
            children: [
              SizedBox(height: 58.h),
              CustomText(
                  text: "Enter Verification Code",
                  fontSize: 24.h,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff0D0D0D)),
              CustomText(
                  maxline: 2,
                  text: "Enter the verification code we’ve just sent to your email to continue",
                  fontSize: 12.h,
                  bottom: 29.h,
                  top: 5.h),



              // TODO: Pin Code TextField

              PinCodeTextField(
                appContext: context,
                length: 6,
                controller: pinCtrl,
                obscureText: false,
                keyboardType: TextInputType.number,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(8),
                  fieldHeight: 50,
                  fieldWidth: 50,
                  inactiveColor: AppColors.borderColor,
                  selectedColor: AppColors.borderColor,
                  activeColor: AppColors.borderColor,
                  disabledColor: AppColors.borderColor,
                ),
                cursorColor: Colors.black,
                animationDuration: Duration(milliseconds: 300),
                enableActiveFill: false,
                onChanged: (value) {},
              ),




              Obx(() =>
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(text: authController.isCountingDown.value
                          ? "${authController.countdown.value}" : "Didn't get the code?",
                        color: authController.isCountingDown.value ? Colors.red : Colors.black,
                      ),
                      GestureDetector(
                          onTap: () {
                            if(authController.isCountingDown.value){
                              ToastMessageHelper.showToastMessage("Already send an otp code to your email");
                            }else{
                              // authController.reSendOtp();

                              pinCtrl.text = "";
                            }
                          },
                          child: CustomText(text: "Resend", color: Colors.red))
                    ],
                  ),
              ),




              const Spacer(),
              CustomButtonGradiant(title: "VERIFY", onpress: () {
                Get.toNamed(AppRoutes.resetPasswordScreen);
              }),
              SizedBox(height: 100.h)
            ],
          ),
        ),
      ),
    );
  }
}
