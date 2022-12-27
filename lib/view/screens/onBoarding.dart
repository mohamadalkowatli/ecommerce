import 'package:flutter/material.dart';
import 'package:myecommerce/controller/onBoardingController.dart';
import 'package:myecommerce/view/widget/onBoarding/CustomMediaOnBoarding.dart';
import 'package:myecommerce/view/widget/onBoarding/dotOnBoading.dart';
import 'package:myecommerce/view/widget/onBoarding/onBordingButton.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      body: SafeArea(
        child: Container(
          // decoration: const BoxDecoration(
          //   gradient: LinearGradient(colors: [
          //     Color(0xFF764BA2),
          //     Color(0xFF667EEA),
          //   ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          // ),
          margin: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              const Expanded(
                flex: 3,
                child: CustomMediaOnBoarding(),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: const [
                    CustomDotControllerOnBoarding(),
                    Spacer(
                      flex: 2,
                    ),
                    CustomButtonOnBoarding()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
