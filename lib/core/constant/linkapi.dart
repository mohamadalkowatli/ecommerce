class AppLink {
  static const String server = "http://e-commercex5.infinityfreeapp.com";
  static const String test = "$server/test.php";
  //Auth
  static const String signup = "$server/Auth/signUp.php";
  static const String verfiycodeSignUp = "$server/Auth/verifyCode.php";
  // static const String login = "$server/Auth/login.php";
  static const String login = "localhost/E-commerce1/Auth/login.php";

  //forgetPassword
  static const String checkEmail = "$server/ForgetPassword/checkEmail.php";
  static const String verifycodeForgetPassword =
      "$server/ForgetPassword/verifyCode.php";
  static const String resetPassword =
      "$server/ForgetPassword/resetPassword.php";
}
