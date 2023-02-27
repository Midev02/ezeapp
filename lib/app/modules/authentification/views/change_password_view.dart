import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../utils/constants/color_constant.dart';
import '../../home/views/home_view.dart';
import '../../onboarding/views/onboarding_view.dart';
import 'login_view.dart';

class ChangePasswordView extends GetView {
  const ChangePasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Center(
                child: ListView(
              shrinkWrap: true,
              children: [
                Text(
                  'Securité',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    height: 0,
                    color: ConstantColors.greyele,
                  ),
                ),
                Text(
                  'Veuillez renseignez votre le  nouveau mot de passe',
                  style: TextStyle(
                    height: 0,
                    color: ConstantColors.greyele,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomTextFormField(
                  isPassword: false,
                  obscureText: true,
                  onTapSuffixIcon: () {},
                  hintText: 'Entrez le mot de passe',
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  isPassword: false,
                  hintText: 'Confirmez le mot de passe',
                  obscureText: true,
                  onTapSuffixIcon: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                    title: 'Terminé',
                    onTap: () {
                      Get.to(const HomeView());
                    })
              ],
            )),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Image.asset('assets/images/vector_illlustration.png'),
        ),
      ],
    );
  }
}
