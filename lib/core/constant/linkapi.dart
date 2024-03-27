class AppLink {
  static const String serverlink = "http://10.0.2.2/care4u";
  //============IMAGE=======================================================
  static const String iamgelink = "http://10.0.2.2/care4u/images";
  static const String iamgeCategories = "$iamgelink/categories/";
  // static const String iamgeCategories = "$iamgelink/categories";

  //test
  static const String test = "$serverlink/test.php";
  //==============Auth=================
  static const String signUp = "$serverlink/auth/signup.php";
  static const String logIn = "$serverlink/auth/login.php";
  static const String verifyCodeSignUp = "$serverlink/auth/verifiycode.php";
  // ===================forgetPassWord======================================
  static const String checkEmail = "$serverlink/forgetpassword/checkemail.php";
  static const String verifyCodeForgetPassWord =
      "$serverlink/forgetpassword/verifycode.php";
  static const String resetPassWord =
      "$serverlink/forgetpassword/resetpassword.php";
  //==============HOME===========================
  static const String home = "$serverlink/home.php";
  static const String aiadar = "$serverlink/aiadar.php";
  static const String doctors = "$serverlink/doctors.php";
  static const String qustion = "$serverlink/qustion.php";
}
