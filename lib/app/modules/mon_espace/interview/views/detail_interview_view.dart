import 'package:flutter/material.dart';

import 'package:get/get.dart';

class DetailInterviewView extends GetView {
  const DetailInterviewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailInterviewView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DetailInterviewView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
