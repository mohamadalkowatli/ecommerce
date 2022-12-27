import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:myecommerce/core/class/StatusRequest.dart';

import '../constant/image_assets.dart';

class HandlingDataView extends StatelessWidget {
  const HandlingDataView(
      {super.key, required this.statusRequest, required this.widget});
  final StatusRequest? statusRequest;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: Lottie.asset(
            ImageAseets.loading,
          ))
        : statusRequest == StatusRequest.offlinefailuer
            ? Center(child: Lottie.asset(ImageAseets.offline))
            : statusRequest == StatusRequest.serverfailuer
                ? Center(child: Lottie.asset(ImageAseets.server404))
                : statusRequest == StatusRequest.failure
                    ? Center(child: Lottie.asset(ImageAseets.nodata))
                    : statusRequest == StatusRequest.dataExist
                        ? widget
                        : widget;
  }
}
