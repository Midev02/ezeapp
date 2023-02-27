import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants/color_constant.dart';

class CustomListTile extends StatelessWidget {
  final String assetIcon;
  final String title;
  final VoidCallback onTap;

  const CustomListTile(
      {super.key,
      required this.assetIcon,
      required this.onTap,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Row(
          children: [
            SvgPicture.asset(assetIcon),
            const SizedBox(width: 15),
            Text(
              title,
              style: TextStyle(color: ConstantColors.greyele, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
