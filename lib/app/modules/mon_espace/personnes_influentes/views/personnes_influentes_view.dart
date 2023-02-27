import 'package:ezeapp/app/modules/mon_espace/personnes_influentes/views/add_personnes_influentes_view.dart';
import 'package:ezeapp/app/modules/mon_espace/personnes_influentes/views/detail_personnes_influentes_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../utils/constants/color_constant.dart';
import '../../../../components/add_button.dart';
import '../../../../components/historique_tile.dart';
import '../controllers/personnes_influentes_controller.dart';

class PersonnesInfluentesView extends GetView<PersonnesInfluentesController> {
  const PersonnesInfluentesView({Key? key}) : super(key: key);
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
                'Perosnne influente',
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
                    Get.to(AddPersonnesInfluentesView());
                  },
                  asset: 'assets/images/person_influentes.png',
                  subtile: 'Ajouter une personne',
                  tile: 'influente'),
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
                    tile: 'OUMOU SANGARE a été ajouté...',
                    onTap: () {
                      Get.to(DetailPersonnesInfluentesView());
                    },
                    villeInTitle: '',
                    time: 'Il y’a 2 minutes',
                  ),
                  HistoriqueTile(
                    asset: 'assets/images/profil_picture.png',
                    subtile:
                        'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise.....',
                    tile: 'LE PERE HOUPHOUET a été ajouté...',
                    onTap: () {
                      Get.to(DetailPersonnesInfluentesView());
                    },
                    villeInTitle: '',
                    time: 'Il y’a 10 minutes',
                  ),
                  HistoriqueTile(
                    asset: 'assets/images/profil_picture.png',
                    subtile:
                        'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise.....',
                    tile: 'LES REINES MERE a été ajouté...',
                    onTap: () {
                      Get.to(DetailPersonnesInfluentesView());
                    },
                    villeInTitle: '',
                    time: 'Il y’a 21 minutes',
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
