import 'package:flutter/material.dart';

import '../../utils/constants/color_constant.dart';
import '../modules/onboarding/views/onboarding_view.dart';

class CustomBottomSheetAddInfo extends StatelessWidget {
  final VoidCallback save;
  final VoidCallback saveAndAddNew;
  final Color? colorButton;

  const CustomBottomSheetAddInfo(
      {super.key,
      required this.save,
      required this.saveAndAddNew,
      this.colorButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 200,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
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
          CustomButton(
            title: 'Enregistrer',
            onTap: save,
            color: colorButton ?? ConstantColors.blueprimary,
          ),
          const SizedBox(height: 20),
          CustomButton(
            title: 'Enregistrer et ajouter un nouveau',
            onTap: saveAndAddNew,
            isOutline: true,
            colorOutline: colorButton ?? ConstantColors.blueprimary,
            color: colorButton ?? ConstantColors.blueprimary,
          ),
        ],
      ),
    );
  }
}
