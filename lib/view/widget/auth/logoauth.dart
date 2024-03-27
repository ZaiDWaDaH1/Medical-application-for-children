import 'package:care_4u_m3hadtqani/core/constant/imageassets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return LottieBuilder.asset(
      AppImageAsset.welcoom2,
      height: 270,
    );
  }
}

class LogoAuthSignUp extends StatelessWidget {
  const LogoAuthSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return LottieBuilder.asset(
      AppImageAsset.ran,
      height: 270,
    );
  }
}
