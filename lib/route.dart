import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:myecommerce/core/constant/routes.dart';
import 'package:myecommerce/core/middleware/myMiddleware.dart';
import 'package:myecommerce/test.dart';
import 'package:myecommerce/view/home.dart';
import 'package:myecommerce/view/languageScreen.dart';
import 'package:myecommerce/view/screens/Auth/ForgetPassword/VerifyCode.dart';
import 'package:myecommerce/view/screens/Auth/ForgetPassword/forgetPassword.dart';
import 'package:myecommerce/view/screens/Auth/successSginUp.dart';
import 'package:myecommerce/view/screens/Auth/login.dart';
import 'package:myecommerce/view/screens/Auth/ForgetPassword/resetPassword.dart';
import 'package:myecommerce/view/screens/Auth/signUp.dart';
import 'package:myecommerce/view/screens/Auth/ForgetPassword/successResetPassword.dart';
import 'package:myecommerce/view/screens/Auth/verfiyCodeSignUp.dart';
import 'package:myecommerce/view/screens/onBoarding.dart';
import 'package:myecommerce/view/test_view.dart';

List<GetPage<dynamic>>? getPages = [
  //homePage : //languageScreen
  // GetPage(name: "/", page: () => const TestVeiw()),
  GetPage(
      name: "/",
      page: () => const LanguageScreen(),
      middlewares: [MyMiddleware()]),
  // Auth
  GetPage(name: AppRoutes.onBoarding, page: () => const OnBoarding()),
  GetPage(name: AppRoutes.login, page: () => const Login()),
  GetPage(name: AppRoutes.signUp, page: () => const SignUp()),
  GetPage(name: AppRoutes.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoutes.verfiyCode, page: () => const VerifyCode()),
  GetPage(name: AppRoutes.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRoutes.successSginUp, page: () => const SuccessSginUp()),
  GetPage(
    name: AppRoutes.verfiyCodeSignUp,
    page: () => const VerifyCodeSignUp(),
  ),
  GetPage(
      name: AppRoutes.successResetPassword,
      page: () => const SuccessResetPassword()),
  //home
  GetPage(name: AppRoutes.home, page: () => const Home()),
];




// Map<String, Widget Function(BuildContext)> routes = {
  //Auth
  // AppRoutes.onBoarding: (context) => const LanguageScreen(),

  // AppRoutes.login: (context) => const Login(),
  // AppRoutes.signUp: (context) => const SignUp(),
  // AppRoutes.forgetPassword: (context) => const ForgetPassword(),
  // AppRoutes.verfiyCode: (context) => const VerifyCode(),
  // AppRoutes.resetPassword: (context) => const ResetPassword(),
  // AppRoutes.successResetPassword: (context) => const SuccessResetPassword(),
  // AppRoutes.successSginUp: (context) => const SuccessSginUp(),
  // AppRoutes.verfiyCodeSignUp: (context) => const VerifyCodeSignUp(),

  // AppRoutes.successSginUp : (context) => const  SuccessSginUp(),

  //language
//   // AppRoutes.language: (context) => const LanguageScreen(),
// };
