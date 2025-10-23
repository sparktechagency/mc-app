





import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mc/utils/app_colors.dart';
import 'package:mc/views/widgets/cachanetwork_image.dart';
import 'package:mc/views/widgets/custom_button.dart';
import 'package:mc/views/widgets/custom_text_field.dart';
import '../../widgets/custom_text.dart';



class EditInformationScreen extends StatelessWidget {
  EditInformationScreen({super.key});


  TextEditingController nameCtrl = TextEditingController();
  TextEditingController phoneNumberCtrl = TextEditingController();

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


            SizedBox(
              height: 100.h,
              width: 100.w,
              child: Stack(
                children: [
                  CustomNetworkImage(imageUrl: "https://randomuser.me/api/portraits/women/65.jpg", height: 100.h, width: 100.w, boxShape: BoxShape.circle),


                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            border: Border.all(color: AppColors.primaryColor),
                            shape: BoxShape.circle
                          ),

                          child: Padding(
                            padding:  EdgeInsets.all(6.r),
                            child: const Icon(Icons.edit, color: Colors.white),
                          )))
                ],
              ),
            ),



            SizedBox(height: 45.h),

            CustomTextField(controller: nameCtrl, hintText: "name", labelText: "Name"),
            CustomTextField(controller: phoneNumberCtrl, hintText: "number", labelText: "Phone Number"),



            const Spacer(),


            CustomButtonGradiant(title: "EDIT INFORMATION", onpress: (){}),


            SizedBox(height: 100.h)

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
