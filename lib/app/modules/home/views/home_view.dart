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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ConstantColors.blueprimary,
        toolbarOpacity: 0,
        centerTitle: true,
        title: const TitleLogoEle(isOutline: false),
      ),
      drawer: Drawer(),
      body: Container(
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                        children: [
                          Icon(Icons.menu),
                          SizedBox(width: 10),
                          Text('Menu'),
                        ],
                      ),
                    ),
                  );
                }),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Bonjour'),
                    Text(
                      'KOFFI DAVID',
                      style: TextStyle(fontSize: 20),
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
            const Text(
              'MON ESPACE',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                itemCount: espacesItems.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 130,
                    mainAxisSpacing: 25,
                    crossAxisSpacing: 10),
                itemBuilder: (context, i) {
                  return Element(espaceItem: espacesItems[i]);
                },
              ),
            )
          ],
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
          Image.asset(espaceItem.asset),
          SizedBox(height: 20),
          Text(
            espaceItem.description,
            style: TextStyle(fontWeight: FontWeight.bold),
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

  const TitleLogoEle({super.key, required this.isOutline});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        EleIcon(isOutline: isOutline),
        const SizedBox(width: 10),
        const Text(
          'ELE’APP',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}

class EspaceItem {
  String asset;
  String description;

  EspaceItem({required this.asset, required this.description});
}

List<EspaceItem> espacesItems = [
  EspaceItem(asset: 'assets/images/sondage.png', description: 'Sondages'),
  EspaceItem(asset: 'assets/images/interview.png', description: 'Interviews'),
  EspaceItem(asset: 'assets/images/incident.png', description: 'Incidents'),
  EspaceItem(asset: 'assets/images/nouvelle.png', description: 'Nouvelles'),
  EspaceItem(
      asset: 'assets/images/person_influentes.png',
      description: 'Personnes Influentes'),
  EspaceItem(
      asset: 'assets/images/collecte_pv.png', description: 'Collecte des PV'),
];
