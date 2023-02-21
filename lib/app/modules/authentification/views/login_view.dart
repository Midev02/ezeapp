import 'package:ezeapp/app/modules/authentification/views/forget_password_view.dart';
import 'package:ezeapp/app/modules/home/views/home_view.dart';
import 'package:ezeapp/app/modules/onboarding/views/onboarding_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class LoginView extends GetView {
  const LoginView({Key? key}) : super(key: key);
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
                  'Connexion',
                  style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold, height: 0),
                ),
                const Text(
                  'Veuillez vous identifiez à votre espace',
                  style: TextStyle(height: 0),
                ),
                const SizedBox(
                  height: 50,
                ),
                const CustomTextFormField(
                  isPassword: false,
                  hintText: 'numéro',
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomTextFormField(
                  isPassword: false,
                  hintText: 'Mot de passe',
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () {
                      Get.to(const ForgetPasswordView());
                    },
                    child: const Text(
                      'Mot de passe oublié',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                    title: 'Me connecter',
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

class CustomTextFormField extends StatelessWidget {
  final bool? obscureText;
  final bool isPassword;
  final String hintText;

  final VoidCallback? onTapSuffixIcon;

  const CustomTextFormField(
      {super.key,
      required this.isPassword,
      this.obscureText,
      this.onTapSuffixIcon,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          suffixIcon: isPassword
              ? IconButton(
                  icon: Icon(
                    obscureText! ? Icons.visibility : Icons.visibility_off,
                    color: Colors.grey[400],
                  ),
                  onPressed: onTapSuffixIcon,
                )
              : null,
        ),
        obscureText: isPassword ? obscureText! : false,
        // Ajoutez les autres propriétés de TextFormField ici
      ),
    );
  }
}
