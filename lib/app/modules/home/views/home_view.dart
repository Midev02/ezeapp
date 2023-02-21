import 'package:flutter/material.dart';
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
        backgroundColor: Colors.white,
        toolbarOpacity: 0,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text("ELE'APP"),
            SizedBox(
              height: 500,
            ),
            Transform.rotate(
              angle: -math.pi / 30,
              child: Text(
                'Monsieur',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Transform.rotate(
              angle: -math.pi / 30,
              child: Text(
                'ASSAHORE KONAN',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Transform.rotate(
              angle: -math.pi / 30,
              child: Text(
                'JACQUES',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: FloatingActionButton.extended(
                onPressed: () {},
                label: const Text('Acceder a l application'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
