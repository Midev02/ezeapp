import 'package:ezeapp/app/modules/authentification/views/otp_verification_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../utils/constants/color_constant.dart';
import '../../onboarding/views/onboarding_view.dart';
import 'login_view.dart';

class ForgetPasswordView extends GetView {
  const ForgetPasswordView({Key? key}) : super(key: key);
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
                  'Mot de passe oublié ?',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    height: 0,
                    color: ConstantColors.greyele,
                  ),
                ),
                Text(
                  'Commençons par  le numéro de téléphone',
                  style: TextStyle(
                    height: 0,
                    color: ConstantColors.greyele,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const CustomTextFormField(
                  isPassword: false,
                  hintText: 'Numéro de télephone',
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  title: 'Envoyer',
                  onTap: () {
                    Get.to(const OtpVerificationView());
                  },
                )
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
