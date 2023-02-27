import 'package:ezeapp/app/modules/mon_espace/collecte_pv/views/add_pv_view.dart';
import 'package:ezeapp/app/modules/mon_espace/collecte_pv/views/detail_pv_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../utils/constants/color_constant.dart';
import '../../../../components/add_button.dart';
import '../../../../components/historique_tile.dart';
import '../controllers/collecte_pv_controller.dart';

class CollectePvView extends GetView<CollectePvController> {
  const CollectePvView({Key? key}) : super(key: key);
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
                'Ajouter un nouveau PV',
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
                    Get.to(AddPvView());
                  },
                  asset: 'assets/images/collecte_pv.png',
                  subtile: 'Ajouter un nouveau',
                  tile: 'PV'),
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
                    asset: 'assets/images/pv_asset.png',
                    subtile:
                        'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise.....',
                    tile: 'PV-BUREAU DE VOTE #751-GAGNOA',
                    onTap: () {
                      Get.to(const DetailPvView());
                    },
                    villeInTitle: '',
                    time: 'Il y’a 2 minutes',
                  ),
                  HistoriqueTile(
                    assetIsCard: true,
                    asset: 'assets/images/pv_asset.png',
                    subtile:
                        'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise.....',
                    tile: 'PV-BUREAU DE VOTE #751-GAGNOA',
                    onTap: () {
                      Get.to(const DetailPvView());
                    },
                    villeInTitle: '',
                    time: 'Il y’a 10 minutes',
                  ),
                  HistoriqueTile(
                    assetIsCard: true,
                    asset: 'assets/images/pv_asset.png',
                    subtile:
                        'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise.....',
                    tile: 'PV-BUREAU DE VOTE #751-GAGNOA',
                    onTap: () {
                      Get.to(const DetailPvView());
                    },
                    villeInTitle: '',
                    time: 'Il y’a 21 minutes',
                  ),
                  HistoriqueTile(
                    assetIsCard: true,
                    asset: 'assets/images/pv_asset.png',
                    subtile:
                        'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise.....',
                    tile: 'PV-BUREAU DE VOTE #751-GAGNOA',
                    onTap: () {
                      Get.to(const DetailPvView());
                    },
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
