import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../utils/constants/color_constant.dart';
import '../../../../components/bottom_sheet_add_info.dart';

class AddPersonnesInfluentesView extends GetView {
  const AddPersonnesInfluentesView({Key? key}) : super(key: key);
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
          'AddPersonInfluentView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
