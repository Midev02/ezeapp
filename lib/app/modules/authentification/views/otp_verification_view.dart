import 'package:ezeapp/app/modules/authentification/views/change_password_view.dart';
import 'package:ezeapp/app/modules/authentification/views/login_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../../onboarding/views/onboarding_view.dart';

class OtpVerificationView extends GetView {
  const OtpVerificationView({Key? key}) : super(key: key);
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
                const Text(
                  'Verification',
                  style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold, height: 0),
                ),
                const Text(
                  'Veuillez renseigner le code reçu par sms',
                  style: TextStyle(height: 0),
                ),
                const SizedBox(
                  height: 50,
                ),
                // Row(
                //   children: [
                //     Pinput(
                //       length: 4,
                //       onCompleted: (pin) async {},
                //       defaultPinTheme: PinTheme(
                //         width: 60,
                //         height: 60,
                //         textStyle: const TextStyle(
                //             fontSize: 20,
                //             color: Color.fromRGBO(30, 60, 87, 1),
                //             fontWeight: FontWeight.w600),
                //         decoration: BoxDecoration(
                //           color: const Color(0xffE6EBF1),
                //           borderRadius: BorderRadius.circular(20),
                //         ),
                //       ),
                //       androidSmsAutofillMethod:
                //           AndroidSmsAutofillMethod.smsUserConsentApi,
                //     ),
                //   ],
                // ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                    title: 'Verifier',
                    onTap: () {
                      Get.to(const ChangePasswordView());
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
