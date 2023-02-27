import 'package:ezeapp/app/components/custom_card_detail_pv.dart';
import 'package:ezeapp/utils/constants/color_constant.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class DetailPvView extends GetView {
  const DetailPvView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstantColors.blueprimary,
        foregroundColor: Colors.white,
        title: const Text(
          'Details',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            height: 84,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'PV-BUREAU DE VOTE #726-GAGNOA',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                    color: ConstantColors.greyele,
                  ),
                ),
                const SizedBox(height: 15),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    '24 mars 2023',
                    style: TextStyle(color: ConstantColors.greyele),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Détails Région',
                  style: TextStyle(color: ConstantColors.greyele),
                ),
                const CustomCardDetailPv(
                  detailsList: [
                    DetailPvListTile(title: 'REGION', value: '480'),
                    DetailPvListTile(
                        title: 'N° DE BUREAU DE VOTE', value: '751'),
                    DetailPvListTile(
                        title: 'CEL', value: 'CED YAKASSE ATTOBROU'),
                  ],
                ),
                const SizedBox(height: 40),
                Text(
                  'Détails Votants',
                  style: TextStyle(color: ConstantColors.greyele),
                ),
                const CustomCardDetailPv(
                  detailsList: [
                    DetailPvListTile(title: 'INSCRITS', value: '14 232'),
                    DetailPvListTile(title: 'HOMMES VOTANTS', value: '4 750'),
                    DetailPvListTile(title: 'FEMMES VOTANTS', value: '2 345'),
                    DetailPvListTile(title: 'TOTAL VOTANTS', value: '7 095'),
                  ],
                ),
                const SizedBox(height: 40),
                Text(
                  'Détails Bulletins',
                  style: TextStyle(color: ConstantColors.greyele),
                ),
                const CustomCardDetailPv(
                  detailsList: [
                    DetailPvListTile(title: 'BULLETINS NULLES', value: '230'),
                    DetailPvListTile(title: 'BULLETINS BLANCS', value: '458'),
                    DetailPvListTile(
                        title: 'SUFFRAGES EXPRIMES', value: '2 345'),
                  ],
                ),
                const SizedBox(height: 40),
                Center(
                  child: Text(
                    'Détails Scores candidats',
                    style: TextStyle(color: ConstantColors.greyele),
                  ),
                ),
                const SizedBox(height: 20),
                const ScoreCandidatWidget(
                  imageCandidat: 'assets/images/profil_picture.png',
                  nomCandidat: 'Jacques Assahoré Konan',
                  scoreCandidat: '3 544',
                ),
                const SizedBox(height: 20),
                const ScoreCandidatWidget(
                  imageCandidat: 'assets/images/profil_picture.png',
                  nomCandidat: 'Jacques Assahoré Konan',
                  scoreCandidat: '3 524',
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
