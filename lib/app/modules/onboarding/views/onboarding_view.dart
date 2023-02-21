import 'dart:ffi';

import 'package:ezeapp/app/modules/authentification/views/authentification_view.dart';
import 'package:ezeapp/app/modules/authentification/views/login_view.dart';
import 'package:ezeapp/utils/constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:get/get.dart';

import '../../home/views/home_view.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Get.height,
            decoration: BoxDecoration(
              color: ConstantColors.blueprimary,
              gradient: RadialGradient(
                colors: [
                  Colors.grey,
                  ConstantColors.blueprimary,
                ],
              ),
            ),
          ),
          Positioned(
            top: 60,
            child: Container(
              width: Get.width,
              child: Center(child: TitleLogoEle(isOutline: true)),
            ),
          ),
          Positioned(
            bottom: 40,
            child: Container(
              width: Get.width,
              child: Column(
                children: [
                  Transform.rotate(
                    angle: -math.pi / 50,
                    child: Column(
                      children: const [
                        Text(
                          'Monsieur',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          'ASSAHORE KONAN',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'JACQUES',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  CustomButton(
                      isOutline: true,
                      title: "Acceder a l'application",
                      onTap: () {
                        Get.to(LoginView());
                      })
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  final bool isOutline;
  final Color color;

  final VoidCallback onTap;
  const CustomButton({
    super.key,
    required this.title,
    required this.onTap,
    this.color = const Color(0Xff2E61E5),
    this.isOutline = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        decoration: BoxDecoration(
            color: isOutline ? null : color,
            border: isOutline ? Border.all(color: Colors.white) : null,
            borderRadius: BorderRadius.circular(15)),
        width: 300,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
