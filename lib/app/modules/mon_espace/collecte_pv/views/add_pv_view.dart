import 'package:ezeapp/app/components/bottom_sheet_add_info.dart';
import 'package:ezeapp/app/modules/onboarding/views/onboarding_view.dart';
import 'package:ezeapp/utils/constants/color_constant.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AddPvView extends GetView {
  const AddPvView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstantColors.blueprimary,
        foregroundColor: Colors.white,
        title: const Text(
          'Renseignez les informations',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      bottomSheet: CustomBottomSheetAddInfo(
          save: () {
            Get.back();
          },
          saveAndAddNew: () {}),
      body: const Center(
        child: Text(
          'AddPvView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
