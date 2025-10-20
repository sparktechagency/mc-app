


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../widgets/custom_text.dart';



class GeneralInformationScreen extends StatelessWidget {
  const GeneralInformationScreen({super.key});

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
                  color: Color(0xffEBEBEB),
                  shape: BoxShape.circle
              ),
              child: const Center(
                child: Icon(Icons.arrow_back),
              ),
            ),
          ),
          title: CustomText(
              text: "General Information", fontWeight: FontWeight.w500, fontSize: 18.h)),



      body: Padding(
        padding:  EdgeInsets.all(20.r),
        child: Column(
          children: [




          ],
        ),
      ),

    );
  }


  Widget _customCard(Widget icon, String title, VoidCallback onTap){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 1.5,
              offset: const Offset(0.5, 0.5),
            ),
          ],
          borderRadius: BorderRadius.circular(8.r),
        ),


        child: Padding(
          padding:  EdgeInsets.all(13.r),
          child: Row(
            children: [


              icon,

              SizedBox(width: 12.w),

              CustomText(text: "${title}"),

              const Spacer(),


              const Icon(Icons.arrow_right)


            ],
          ),
        ),
      ),
    );

  }
}
