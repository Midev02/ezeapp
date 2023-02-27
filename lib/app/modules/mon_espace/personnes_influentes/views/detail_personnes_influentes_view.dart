import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../../../../../utils/constants/color_constant.dart';
import '../../../../../utils/custom_clip_path.dart';

class DetailPersonnesInfluentesView extends GetView {
  const DetailPersonnesInfluentesView({Key? key}) : super(key: key);
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
          ClipPath(
            clipper: BottomLeftRightRoundedClipper(),
            child: Container(
              height: 200,
              child: Image.asset(
                'assets/images/info.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'OUMOU SANGARE',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: ConstantColors.greyele,
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  'Details sur la personne',
                  style: TextStyle(color: ConstantColors.greyele),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: const [
                      CustomListTileDetailPersonneInfluente(
                        asset: 'assets/svg/detail_person_1.svg',
                        title: 'Contact de la personne',
                        value: '01 02 03 04 53',
                      ),
                      SizedBox(height: 20),
                      CustomListTileDetailPersonneInfluente(
                        asset: 'assets/svg/detail_person_2.svg',
                        title: 'source',
                        value: 'Artiste chanteur',
                      ),
                      SizedBox(height: 20),
                      CustomListTileDetailPersonneInfluente(
                        asset: 'assets/svg/detail_person_3.svg',
                        title: 'Localité',
                        value: 'Daloa',
                      ),
                      SizedBox(height: 20),
                      CustomListTileDetailPersonneInfluente(
                        asset: 'assets/svg/detail_person_4.svg',
                        title: 'Action a entreprendre',
                        value: 'Lorem',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomListTileDetailPersonneInfluente extends StatelessWidget {
  final String asset;
  final String title;
  final String value;

  const CustomListTileDetailPersonneInfluente(
      {super.key,
      required this.asset,
      required this.title,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 18,
          height: 18,
          child: SvgPicture.asset(
            asset,
            width: 18,
            height: 18,
          ),
        ),
        SizedBox(width: 20),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
                color: ConstantColors.greyele,
              ),
            ),
            Text(
              value,
              style: TextStyle(
                  color: Color(0xff526675), fontWeight: FontWeight.w700),
            ),
          ],
        )
      ],
    );
  }
}
