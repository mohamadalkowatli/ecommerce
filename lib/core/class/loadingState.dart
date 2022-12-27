import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';
import 'package:myecommerce/core/class/StatusRequest.dart';
import '../constant/image_assets.dart';

class LoadingState extends StatelessWidget {
  const LoadingState(
      {super.key, required this.statusRequest, required this.widget});

  final StatusRequest? statusRequest;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: Lottie.asset(ImageAseets.loading, width: 200, height: 200))
        : statusRequest == StatusRequest.failure
            ? widget
            : widget;
  }
}
