import 'package:flutter/material.dart';
import 'package:myecommerce/controller/Auth/checkBox_controller.dart';
import 'package:myecommerce/controller/Auth/login_controller.dart';
import 'package:myecommerce/core/class/loadingState.dart';
import 'package:myecommerce/core/constant/colors.dart';
import 'package:myecommerce/core/functions/alert_exit_app.dart';
import 'package:myecommerce/core/functions/valid_input.dart';
import 'package:myecommerce/view/widget/Auth/CustomTextBodyAuth.dart';
import 'package:myecommerce/view/widget/Auth/CustomTextTitleAuth.dart';
import 'package:myecommerce/view/widget/Auth/customCheckBoxAuth.dart';
import 'package:myecommerce/view/widget/Auth/logoAuth.dart';
import '../../widget/Auth/CustomButtomAuth.dart';
import '../../widget/Auth/CustomTextFormAuth.dart';
import 'package:get/get.dart';
import '../../widget/Auth/CustomTextSignUpOrSignIn.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());
    CheckBoxContrllerImp checkBoxContrllerImp = Get.put(CheckBoxContrllerImp());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundcolor,
        elevation: 0.0,
        centerTitle: true,
        title: Text("SignIn".tr,
            style: TextStyle(color: AppColors.authAppbarColor)),
      ),
      body: WillPopScope(
        //
        onWillPop: alertExitApp,
        child: GetBuilder<LoginControllerImp>(
          builder: (controllerImp) => LoadingState(
            statusRequest: controllerImp.statusRequest,
            widget: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                color: AppColors.backgroundcolor,
                child: Form(
                  key: controllerImp.formState,
                  child: ListView(children: [
                    const LogoAuth(),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomTextTitleAuth(
                      text: "WelcomeBack".tr,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextBodyAuth(text: "loginTitle".tr),
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
                    Obx(
                      () => CustomTextFormAuth(
                        valid: (val) {
                          return validInput(val!, 5, 15, "password");
                        },
                        obscureText: !checkBoxContrllerImp.isShowPassword.value,
                        hintText: "EnterYourPassword".tr,
                        labeText: "Password".tr,
                        iconData: Icons.lock_outlined,
                        mycontroller: controllerImp.password,
                        isNumber: false,
                      ),
                    ),
                    CustomCheckBoxAuth(),
                    InkWell(
                        onTap: () {
                          controllerImp.goToForgetPassword();
                        },
                        child: Text("ForgetPassword".tr,
                            textAlign: TextAlign.end)),
                    CustomButtomAuth(
                        text: "SignIn".tr,
                        onPressed: () {
                          controllerImp.login();
                        }),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextSignUpOrSignIn(
                      signUpOrSignIn: "SignUp".tr,
                      text: "DontHaveAnAccount".tr,
                      onTap: () {
                        controllerImp.goToSignUp();
                      },
                    ),
                  ]),
                )),
          ),
        ),
      ),
    );
  }
}
