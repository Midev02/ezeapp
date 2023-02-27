import 'package:ezeapp/app/modules/mon_espace/incident/views/add_incident_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../utils/constants/color_constant.dart';
import '../../../../components/add_button.dart';
import '../../../../components/historique_tile.dart';
import '../controllers/incident_controller.dart';

class IncidentView extends GetView<IncidentController> {
  const IncidentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstantColors.redprimary,
        foregroundColor: Colors.white,
        actions: const [
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Incident',
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
                    Get.to(AddIncidentView());
                  },
                  asset: 'assets/images/incident.png',
                  subtile: 'Ajouter un nouvel',
                  tile: 'incident'),
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
                    assetIsCard: true,
                    asset: 'assets/images/profil_picture.png',
                    subtile:
                        'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise.....',
                    tile: 'Sur la route de Béoumi...',
                    onTap: () {},
                    villeInTitle: '',
                    time: 'Il y’a 2 minutes',
                  ),
                  HistoriqueTile(
                    assetIsCard: true,
                    asset: 'assets/images/profil_picture.png',
                    subtile:
                        'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise.....',
                    tile: 'Sur la route de Béoumi...',
                    onTap: () {},
                    villeInTitle: '',
                    time: 'Il y’a 10 minutes',
                  ),
                  HistoriqueTile(
                    assetIsCard: true,
                    asset: 'assets/images/profil_picture.png',
                    subtile:
                        'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise.....',
                    tile: 'Sur la route de Béoumi...',
                    onTap: () {},
                    villeInTitle: '',
                    time: 'Il y’a 21 minutes',
                  ),
                  HistoriqueTile(
                    assetIsCard: true,
                    asset: 'assets/images/profil_picture.png',
                    subtile:
                        'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise.....',
                    tile: 'Sur la route de Béoumi...',
                    onTap: () {},
                    villeInTitle: '',
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
