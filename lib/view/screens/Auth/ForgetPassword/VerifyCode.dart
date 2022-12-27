import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:myecommerce/core/constant/colors.dart';
import 'package:myecommerce/view/widget/Auth/CustomTextBodyAuth.dart';
import 'package:myecommerce/view/widget/Auth/CustomTextTitleAuth.dart';
import '../../../../controller/ForgetPassword/verify_code_controller.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controllerImp = Get.put(VerifyCodeControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.backgroundcolor,
          elevation: 0.0,
          centerTitle: true,
          title: Text("verficationCode".tr,
              style: TextStyle(color: AppColors.authAppbarColor)),
        ),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            color: AppColors.backgroundcolor,
            child: ListView(
              children: [
                const SizedBox(
                  height: 15,
                ),
                CustomTextTitleAuth(
                  text: "CheckCode".tr,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextBodyAuth(text: "verficationCodeTitle".tr),
                const SizedBox(
                  height: 30,
                ),
                OtpTextField(
                  borderRadius: BorderRadius.circular(15),
                  fieldWidth: 50,
                  numberOfFields: 5,
                  borderColor: AppColors.primaryColor,
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    controllerImp.verifycode = verificationCode;
                    controllerImp.checkCode();
                  }, // end onSubmit
                )
              ],
            )));
  }
}
