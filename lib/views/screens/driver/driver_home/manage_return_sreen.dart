


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mc/utils/app_colors.dart';
import 'package:mc/views/widgets/custom_button.dart';

import '../../../widgets/custom_text.dart';

class ManageReturnSreen extends StatefulWidget {
  const ManageReturnSreen({super.key});

  @override
  State<ManageReturnSreen> createState() => _ManageReturnSreenState();
}

class _ManageReturnSreenState extends State<ManageReturnSreen> {
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
              text: "Manage Returns",
              fontWeight: FontWeight.w500,
              fontSize: 18.h)),




      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
          
          
              SizedBox(
                height: 480.h,
                child: ListView.builder(
                  itemCount: 2,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(top: 5.5.h, bottom: 5.5.h, left: 2.w, right: 2.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 1.5,
                          offset: const Offset(0.5, 0.5),
                        )
                      ],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.all(10.r),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Company Name Text
                          CustomText(text: "Company Name: 560", fontWeight: FontWeight.w500),
                          const SizedBox(height: 10),

                          // Row with Labels (Item No., Delivery Quantity, Return Quantity)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              CustomText(text: "Item No.", fontSize: 10),
                              CustomText(text: "Delivery Quantity", fontSize: 10),
                              CustomText(text: "Return Quantity", fontSize: 10),
                            ],
                          ),
                          const Divider(),

                          // List of Item Numbers, Delivery Quantities, and Return Quantities
                          const ItemRow(itemNo: '105324'),
                          const ItemRow(itemNo: '105324'),

                          // Comment on Return Text and TextField for Comments
                          const SizedBox(height: 10),
                          CustomText(text: "Comment on return", fontSize: 12),
                            TextField(
                            maxLines: 2,
                            style: TextStyle(fontSize: 10.h),
                            decoration: InputDecoration(
                              hintText: "Enter your comment here",
                              filled: true,
                              fillColor: const Color(0xffEBEBEB),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.r)), // <-- Border radius
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.r)),
                                borderSide: const BorderSide(color: Colors.grey), // normal border
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.r)),
                                borderSide: const BorderSide(color: AppColors.primaryColor), // focused border
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),



              SizedBox(height: 20.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Total Amount", fontSize: 12.h),
                  CustomText(text: "\$${560}", fontSize: 12.h),
                ],
              ),



              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Refund Amount", fontSize: 12.h),
                  CustomText(text: "\$${40}", fontSize: 12.h, color: Colors.red),
                ],
              ),



              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "After Refund", fontSize: 12.h),
                  CustomText(text: "\$${1551}", fontSize: 12.h, color: Colors.green),
                ],
              ),


              SizedBox(height: 20.h),






              CustomButtonGradiant(title: "CONFIRM & PRINT", onpress: (){})
          
          
          
            ],
          ),
        ),
      ),


    );
  }
}




class ItemRow extends StatelessWidget {
  final String itemNo;

  const ItemRow({
    required this.itemNo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Item No.
          CustomText(text: itemNo, fontSize: 12),

          // Delivery Quantity
           SizedBox(
            width: 100.w,
            height: 35.h,
            child:  TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 10.h),
              decoration:  InputDecoration(
                hintText: "08",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.r)), // <-- Border radius
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  borderSide: const BorderSide(color: Colors.grey), // normal border
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  borderSide: const BorderSide(color: Colors.blue), // focused border
                ),
              ),
            ),
          ),

          // Return Quantity
          SizedBox(
            width: 100.w,
            height: 35.h,
            child:  TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 10.h),
              decoration: InputDecoration(
                hintText: "08",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.r)), // <-- Border radius
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  borderSide: const BorderSide(color: Colors.grey), // normal border
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  borderSide: const BorderSide(color: Colors.blue), // focused border
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}