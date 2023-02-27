import 'package:ezeapp/app/components/custom_listile.dart';
import 'package:ezeapp/app/modules/onboarding/views/onboarding_view.dart';
import 'package:ezeapp/utils/constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                  height: 153,
                  width: double.infinity,
                  color: ConstantColors.blueprimary,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage('assets/images/profil_picture.png'),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              'Mon compte',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300),
                            ),
                            RichText(
                              text: const TextSpan(
                                text: 'KOFFI JEAN DAVID',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                CustomListTile(
                  assetIcon: 'assets/svg/acceuil.svg',
                  onTap: () {},
                  title: 'Acceuil',
                ),
                const SizedBox(height: 15),
                CustomListTile(
                  assetIcon: 'assets/svg/comment.svg',
                  onTap: () {},
                  title: 'Informations',
                ),
                const SizedBox(height: 15),
                CustomListTile(
                  assetIcon: 'assets/svg/settings.svg',
                  onTap: () {},
                  title: 'Paramètres',
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Center(
              child: CustomButton(
                title: 'Se deconnecter',
                onTap: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
