import 'package:ezeapp/app/components/add_button.dart';
import 'package:ezeapp/app/components/historique_tile.dart';
import 'package:ezeapp/app/modules/mon_espace/sondage/views/add_sondage_view.dart';
import 'package:ezeapp/app/modules/mon_espace/sondage/views/detail_sondage_view.dart';
import 'package:ezeapp/utils/constants/color_constant.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sondage_controller.dart';

class SondageView extends GetView<SondageController> {
  const SondageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstantColors.blueprimary,
        foregroundColor: Colors.white,
        actions: const [
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Sondages',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            Center(
              child: AddButton(
                  onTap: () {
                    Get.to(AddSondageView());
                  },
                  asset: 'assets/images/sondage.png',
                  subtile: 'Ajouter un nouveau',
                  tile: 'Sondage'),
            ),
            const SizedBox(height: 25),
            Text(
              'Historique',
              style: TextStyle(fontSize: 16, color: ConstantColors.greyele),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  HistoriqueTile(
                    asset: 'assets/images/profil_picture.png',
                    subtile:
                        'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise.....',
                    tile: 'Sondage regional de ',
                    onTap: () {
                      Get.to(DetailSondageView());
                    },
                    villeInTitle: 'Daloa',
                    time: 'Il y’a 2 minutes',
                  ),
                  HistoriqueTile(
                    asset: 'assets/images/profil_picture.png',
                    subtile:
                        'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise.....',
                    tile: 'Sondage regional de ',
                    onTap: () {
                      Get.to(DetailSondageView());
                    },
                    villeInTitle: 'Gagnoa',
                    time: 'Il y’a 10 minutes',
                  ),
                  HistoriqueTile(
                    asset: 'assets/images/profil_picture.png',
                    subtile:
                        'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise.....',
                    tile: 'Sondage regional de ',
                    onTap: () {
                      Get.to(DetailSondageView());
                    },
                    villeInTitle: 'Aboisso',
                    time: 'Il y’a 21 minutes',
                  ),
                  HistoriqueTile(
                    asset: 'assets/images/profil_picture.png',
                    subtile:
                        'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise.....',
                    tile: 'Sondage regional de ',
                    onTap: () {
                      Get.to(DetailSondageView());
                    },
                    villeInTitle: 'Grand-laou',
                    time: 'Il y’a 1 heure',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
