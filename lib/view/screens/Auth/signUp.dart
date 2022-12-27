import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerce/controller/Auth/signup_controller.dart';
import 'package:myecommerce/core/class/handlingDataView.dart';
import 'package:myecommerce/core/constant/colors.dart';
import 'package:myecommerce/view/widget/Auth/CustomTextBodyAuth.dart';
import 'package:myecommerce/view/widget/Auth/CustomTextTitleAuth.dart';
import '../../../controller/Auth/checkBox_controller.dart';
import '../../../core/functions/alert_exit_app.dart';
import '../../../core/functions/valid_input.dart';
import '../../widget/Auth/CustomButtomAuth.dart';
import '../../widget/Auth/CustomTextFormAuth.dart';
import '../../widget/Auth/CustomTextSignUpOrSignIn.dart';
import '../../widget/Auth/customCheckBoxAuth.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SginUpControllerImp());
    CheckBoxContrllerImp checkBoxContrllerImp = Get.put(CheckBoxContrllerImp());

    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.backgroundcolor,
          elevation: 0.0,
          centerTitle: true,
          title: Text("SignUp".tr,
              style: TextStyle(color: AppColors.authAppbarColor)),
        ),
        body: WillPopScope(
            onWillPop: alertExitApp,
            child: GetBuilder<SginUpControllerImp>(
                builder: (controllerImp) => HandlingDataView(
                      statusRequest: controllerImp.statusRequest,
                      widget: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        color: AppColors.backgroundcolor,
                        child: Form(
                          key: controllerImp.formState,
                          child: ListView(
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              CustomTextTitleAuth(
                                text: "WelcomeBack".tr,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CustomTextBodyAuth(text: "signUpTitle".tr),
                              const SizedBox(
                                height: 30,
                              ),
                              CustomTextFormAuth(
                                valid: (val) {
                                  return validInput(val!, 4, 10, "username");
                                },
                                hintText: "EnterYourUsername".tr,
                                labeText: "Username".tr,
                                iconData: Icons.person,
                                mycontroller: controllerImp.username,
                                isNumber: false,
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
                              CustomTextFormAuth(
                                valid: (val) {
                                  return validInput(val!, 9, 10, "phone");
                                },
                                hintText: "EnterYourPhone".tr,
                                labeText: "Phone".tr,
                                iconData: Icons.phone_android_outlined,
                                mycontroller: controllerImp.phone,
                                isNumber: true,
                              ),
                              Obx(
                                () => CustomTextFormAuth(
                                  valid: (val) {
                                    return validInput(val!, 5, 15, "password");
                                  },
                                  obscureText: !checkBoxContrllerImp
                                      .isShowPassword.value,
                                  hintText: "EnterYourPassword".tr,
                                  labeText: "Password".tr,
                                  iconData: Icons.lock_outlined,
                                  mycontroller: controllerImp.password,
                                  isNumber: false,
                                ),
                              ),
                              CustomCheckBoxAuth(),
                              CustomButtomAuth(
                                text: "SignUp".tr,
                                onPressed: () {
                                  controllerImp.sginUp();
                                },
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              CustomTextSignUpOrSignIn(
                                signUpOrSignIn: "SignIn".tr,
                                text: "haveanAccount".tr,
                                onTap: () {
                                  controllerImp.goToSginIn();
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ))));
  }
}
