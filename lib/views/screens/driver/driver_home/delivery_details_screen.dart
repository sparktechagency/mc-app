import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mc/utils/app_colors.dart';
import 'package:mc/views/widgets/custom_button.dart';

import '../../../widgets/custom_text.dart';

class DeliveryDetailsScreen extends StatefulWidget {
  const DeliveryDetailsScreen({super.key});

  @override
  State<DeliveryDetailsScreen> createState() => _DeliveryDetailsScreenState();
}

class _DeliveryDetailsScreenState extends State<DeliveryDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              margin: EdgeInsets.only(left: 20.w),
              decoration: const BoxDecoration(
                  color: Color(0xffEBEBEB), shape: BoxShape.circle),
              child: const Center(
                child: Icon(Icons.arrow_back),
              ),
            ),
          ),
          title: CustomText(
              text: "Delivery Detail",
              fontWeight: FontWeight.w500,
              fontSize: 18.h)),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _customColumn("Order Id", "#123456"),
            _customColumn("Store's Id", "#64511"),
            _customColumn("Store's Name", "Max"),
            _customColumn("Store's Address", "5th North Avenue"),
            _customColumn("Pickup Date", "10/10/2025"),
            _customColumn("Expected Date", "10/11/2025"),
            _customColumn("Tracking Number", "#452142"),

            SizedBox(height: 45.h),
            Row(
              children: [
                Expanded(
                    child: CustomButton(
                        title: "See Direction",
                        loaderIgnore: true,
                        onpress: () {},
                        color: const Color(0xff767676),
                        boderColor: Colors.transparent)),
                SizedBox(width: 12.w),
                Expanded(
                    child: CustomButton(
                        title: "See Direction",
                        loaderIgnore: true,
                        onpress: () {},
                        color: const Color(0xffC2B067),
                        boderColor: Colors.transparent)),
              ],
            ),

            SizedBox(height: 16.h),
            CustomButton(title: "Edit Quantity", onpress: () {}),
            SizedBox(height: 16.h),
            CustomButton(title: "I Have Arrived", onpress: () {}),
          ],
        ),
      ),
    );
  }

  _customColumn(String title, subTitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16.h),
        CustomText(text: "$title", fontWeight: FontWeight.w600, fontSize: 16),
        CustomText(
            text: "$subTitle", fontSize: 12.h, color: AppColors.textColor5c5c5c)
      ],
    );
  }
}
