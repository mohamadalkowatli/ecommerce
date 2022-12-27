import 'package:flutter/material.dart';
import 'package:myecommerce/binding.dart';
import 'package:myecommerce/core/localization/translation.dart';
import 'package:get/get.dart';
import 'package:myecommerce/route.dart';

import 'package:myecommerce/core/services/services.dart';

import 'core/localization/changelocal.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,
      translations: MyTranslation(),
      theme: controller.appTheme,
      initialBinding: MyBinding(),
      getPages: getPages,
    );
  }
}
