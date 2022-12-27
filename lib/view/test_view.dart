import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerce/controller/testController.dart';
import 'package:myecommerce/core/class/StatusRequest.dart';
import 'package:myecommerce/core/class/handlingDataView.dart';

class TestVeiw extends StatelessWidget {
  const TestVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(title: const Text("test data")),
      body: GetBuilder<TestController>(
        builder: (controller) {
          return HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: ListView.builder(
              itemCount: controller.data.length,
              itemBuilder: (context, index) {
                return Text("${controller.data}");
              },
            ),
          );
        },
      ),
    );
  }
}
