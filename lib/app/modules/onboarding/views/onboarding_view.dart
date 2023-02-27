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
    return Container(
      color: ConstantColors.blueprimary,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: ConstantColors.blueprimary,
          body: Stack(
            children: [
              Positioned.fill(
                  child: Container(
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),
                    const TitleLogoEle(
                      isOutline: true,
                      height: 2,
                      fontSize: 21,
                    ),
                    Expanded(
                      child: Image.asset(
                        'assets/images/ELEMISTER.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ],
                ),
              )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 100,
                    child: Image.asset('assets/images/NAME.png'),
                  ),
                  const SizedBox(height: 40),
                  Center(
                    child: CustomButton(
                        width: 300,
                        isOutline: true,
                        title: "Acceder a l'application",
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LoginView();
                          }));
                          // Get.to(const LoginView());
                        }),
                  ),
                  const SizedBox(height: 50),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  final bool isOutline;
  final double? width;

  final Color color;
  final Color colorOutline;

  final VoidCallback onTap;
  const CustomButton({
    super.key,
    this.width,
    required this.title,
    required this.onTap,
    this.color = const Color(0Xff2E61E5),
    this.colorOutline = Colors.white,
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
            border: isOutline ? Border.all(color: colorOutline) : null,
            borderRadius: BorderRadius.circular(15)),
        width: width ?? double.infinity,
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: colorOutline, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
