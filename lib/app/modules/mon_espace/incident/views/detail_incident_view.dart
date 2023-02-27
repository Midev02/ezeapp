import 'package:flutter/material.dart';

import 'package:get/get.dart';

class DetailIncidentView extends GetView {
  const DetailIncidentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailIncidentView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DetailIncidentView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
