import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerce/core/class/loadingState.dart';
import 'package:myecommerce/core/constant/colors.dart';
import 'package:myecommerce/view/widget/Auth/CustomTextBodyAuth.dart';
import 'package:myecommerce/view/widget/Auth/CustomTextTitleAuth.dart';
import '../../../../controller/ForgetPassword/forgetPassword_controller.dart';
import '../../../../core/functions/valid_input.dart';
import '../../../widget/Auth/CustomButtomAuth.dart';
import '../../../widget/Auth/CustomTextFormAuth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ForgetPasswordControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.backgroundcolor,
          elevation: 0.0,
          centerTitle: true,
          title: Text("ForgetPassword".tr,
              style: TextStyle(color: AppColors.authAppbarColor)),
        ),
        body: GetBuilder<ForgetPasswordControllerImp>(
          builder: (controllerImp) => LoadingState(
              statusRequest: controllerImp.statusRequest,
              widget: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  color: AppColors.backgroundcolor,
                  child: Form(
                    key: controllerImp.formState,
                    child: ListView(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        CustomTextTitleAuth(
                          text: "CheckEmail".tr,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextBodyAuth(text: "checkEmailTitle".tr),
                        const SizedBox(
                          height: 30,
                        ),
                        CustomTextFormAuth(
                          valid: (val) {
                            return validInput(val!, 5, 100, "email");
                          },
                          hintText: "EnterYourEmail".tr,
                          labeText: "Email".tr,
                          iconData: Icons.email_outlined,
                          mycontroller: controllerImp.email,
                          isNumber: false,
                        ),
                        CustomButtomAuth(
                          text: "check".tr,
                          onPressed: () {
                            controllerImp.checkEmail();
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ))),
        ));
  }
}
