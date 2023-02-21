import 'dart:async';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
// import 'package:nfcapp/app/services/storage.dart';
// import 'package:shared_preferences/shared_preferences.dart';

import '../../../routes/app_pages.dart';
import '../../onboarding/views/onboarding_view.dart';

class SplashController extends GetxController {
  bool asLogged = false;

  @override
  void onInit() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // asLogged = await StorageService.getToken() != null;
      // SharedPreferences prefs = await SharedPreferences.getInstance();
      // bool hasOnboarded = prefs.getBool('hasOnboarded') ?? false;
      // log(isSecure.toString());
      Timer(
        const Duration(seconds: 1),
        () async {
          false
              ? false
                  ? Get.offAllNamed(Routes.HOME)
                  : Get.offAllNamed(Routes.AURTHENTIFICATION)
              : Get.offAll(const OnboardingView());
        },
      );
    });

    super.onInit();
  }
}
