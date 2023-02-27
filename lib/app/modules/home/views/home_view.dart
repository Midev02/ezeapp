import 'dart:io';

import 'package:ezeapp/app/components/custom_drawer.dart';
import 'package:ezeapp/app/modules/mon_espace/collecte_pv/views/collecte_pv_view.dart';
import 'package:ezeapp/app/modules/mon_espace/incident/views/incident_view.dart';
import 'package:ezeapp/app/modules/mon_espace/interview/views/interview_view.dart';
import 'package:ezeapp/app/modules/mon_espace/nouvelle/views/nouvelle_view.dart';
import 'package:ezeapp/app/modules/mon_espace/personnes_influentes/views/personnes_influentes_view.dart';
import 'package:ezeapp/app/modules/mon_espace/sondage/views/sondage_view.dart';
import 'package:ezeapp/utils/constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:math' as math;

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120), // Set this height
        child: Container(
          height: Platform.isAndroid ? 110 : 130,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 19),
          color: ConstantColors.blueprimary,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TitleLogoEle(
                isOutline: false,
                fontSize: 24,
                height: 1.2,
              ),
              Container(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                      'assets/svg/location_icon.svg',
                      width: 17,
                      height: 21,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Région du Gbêkê',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      // AppBar(
      //   elevation: 0,
      //   backgroundColor: ConstantColors.blueprimary,
      //   toolbarOpacity: 0,
      //   centerTitle: true,
      //   title: const TitleLogoEle(isOutline: false),
      // ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Builder(builder: (context) {
                    return GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 6,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          children: const [
                            Icon(Icons.menu),
                            SizedBox(width: 10),
                            Text('Menu'),
                          ],
                        ),
                      ),
                    );
                  }),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Bonjour',
                        style: TextStyle(color: ConstantColors.greyele),
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'KOFFI ',
                          style: TextStyle(
                              fontSize: 24,
                              color: ConstantColors.greyele,
                              fontWeight: FontWeight.bold),
                          children: const [
                            TextSpan(
                                text: 'DAVID',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                )),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 40),
              Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 6,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    UnconstrainedBox(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ConstantColors.blueprimary.withOpacity(0.2),
                        ),
                        child: Center(
                          child: Text(
                            'Informations',
                            style: TextStyle(
                              color: ConstantColors.blueprimary,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie ....",
                      style: TextStyle(fontWeight: FontWeight.w200),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Text(
                'MON ESPACE',
                style: TextStyle(
                  fontSize: 20,
                  color: ConstantColors.greyele,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 20),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: espacesItems.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 130,
                    mainAxisSpacing: 25,
                    crossAxisSpacing: 10),
                itemBuilder: (context, i) {
                  return GestureDetector(
                    onTap: espacesItems[i].onTap,
                    child: Element(espaceItem: espacesItems[i]),
                  );
                },
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class Element extends StatelessWidget {
  final EspaceItem espaceItem;
  const Element({super.key, required this.espaceItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 6,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: Image.asset(
              espaceItem.asset,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            espaceItem.description,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: ConstantColors.greyele),
          ),
        ],
      ),
    );
  }
}

class EleIcon extends StatelessWidget {
  final bool isOutline;
  const EleIcon({super.key, required this.isOutline});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isOutline ? null : Colors.white,
          border: isOutline ? Border.all(color: Colors.white) : null),
      child: Center(
        child: SvgPicture.asset(
          'assets/images/ele_icon.svg',
          color: isOutline ? Colors.white : ConstantColors.blueprimary,
          width: 20,
        ),
      ),
    );
  }
}

class TitleLogoEle extends StatelessWidget {
  final bool isOutline;
  final double? fontSize;
  final double? height;

  const TitleLogoEle(
      {super.key, required this.isOutline, this.fontSize = 14, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          EleIcon(isOutline: isOutline),
          const SizedBox(width: 10),
          Text(
            'ELE’APP',
            style: TextStyle(
                color: Colors.white, fontSize: fontSize!, height: height),
          ),
        ],
      ),
    );
  }
}

class EspaceItem {
  String asset;
  String description;
  VoidCallback onTap;

  EspaceItem(
      {required this.asset, required this.description, required this.onTap});
}

List<EspaceItem> espacesItems = [
  EspaceItem(
    asset: 'assets/images/sondage.png',
    description: 'Sondages',
    onTap: () {
      Get.to(const SondageView());
    },
  ),
  EspaceItem(
    asset: 'assets/images/interview.png',
    description: 'Interviews',
    onTap: () {
      Get.to(const InterviewView());
    },
  ),
  EspaceItem(
    asset: 'assets/images/incident.png',
    description: 'Incidents',
    onTap: () {
      Get.to(const IncidentView());
    },
  ),
  EspaceItem(
    asset: 'assets/images/nouvelle.png',
    description: 'News',
    onTap: () {
      Get.to(const NouvelleView());
    },
  ),
  EspaceItem(
    asset: 'assets/images/person_influentes.png',
    description: 'Personnes Influentes',
    onTap: () {
      Get.to(const PersonnesInfluentesView());
    },
  ),
  EspaceItem(
    asset: 'assets/images/collecte_pv.png',
    description: 'Collecte des PV',
    onTap: () {
      Get.to(const CollectePvView());
    },
  ),
];
