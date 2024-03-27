import 'package:care_4u_m3hadtqani/core/class/statusrequest.dart';
import 'package:care_4u_m3hadtqani/core/constant/imageassets.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class HandleDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandleDataView(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: LottieBuilder.asset(
            AppImageAsset.cuteloding,
            width: 300,
            height: 300,
          ))
        : statusRequest == StatusRequest.offlinefailure
            ? Center(
                child: LottieBuilder.asset(
                AppImageAsset.offlineLottie,
                width: 300,
                height: 300,
              ))
            : statusRequest == StatusRequest.serverfailure
                ? Center(
                    child: LottieBuilder.asset(
                    AppImageAsset.errorLottie,
                    width: 300,
                    height: 300,
                  ))
                : statusRequest == StatusRequest.failure
                    ? Center(
                        child: LottieBuilder.asset(
                        AppImageAsset.emptyLottie,
                        width: 330,
                        height: 330,
                      ))
                    : widget;
  }
}

class HandleDataReequset extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandleDataReequset(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: LottieBuilder.asset(
            AppImageAsset.loadingLottie,
            width: 300,
            height: 300,
          ))
        : statusRequest == StatusRequest.offlinefailure
            ? Center(
                child: LottieBuilder.asset(
                AppImageAsset.offlineLottie,
                width: 300,
                height: 300,
              ))
            : statusRequest == StatusRequest.serverfailure
                ? Center(
                    child: LottieBuilder.asset(
                    AppImageAsset.errorLottie,
                    width: 300,
                    height: 300,
                  ))
                : widget;
  }
}
