import 'package:get/get.dart';
import 'package:myecommerce/core/constant/image_assets.dart';

import '../../model/onBoardingModel.dart';

List<OnBoardingModle> onBoardingList = [
  OnBoardingModle(
      title: "onBoardingTitle_1".tr,
      body: "onBoardingBody_1.1".tr +
          "onBoardingBody_1.2".tr +
          "onBoardingBody_1.3".tr,
      image: ImageAseets.onBoardingImageOne),
  OnBoardingModle(
      title: "onBoardingTitle_2".tr,
      body: "onBoardingBody_2.1".tr +
          "onBoardingBody_2.2".tr +
          "onBoardingBody_2.3".tr,
      image: ImageAseets.onBoardingImageTwo),
  OnBoardingModle(
      title: "onBoardingTitle_3".tr,
      body: "onBoardingBody_3.1".tr +
          "onBoardingBody_3.2".tr +
          "onBoardingBody_3.3".tr,
      image: ImageAseets.onBoardingImageThree),
];
