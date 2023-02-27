import 'package:ezeapp/utils/constants/color_constant.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

class HistoriqueTile extends StatelessWidget {
  final String asset;
  final String subtile;
  final String tile;
  final String time;
  final bool assetIsCard;

  final String villeInTitle;

  final VoidCallback onTap;

  const HistoriqueTile(
      {super.key,
      this.assetIsCard = false,
      required this.asset,
      required this.subtile,
      required this.tile,
      required this.onTap,
      required this.villeInTitle,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                !assetIsCard
                    ? CircleAvatar(
                        backgroundImage: AssetImage(asset),
                        radius: 30,
                      )
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          width: 73,
                          height: 58,
                          child: Image.asset(
                            asset,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: tile,
                          style: TextStyle(
                            fontSize: 15,
                            color: ConstantColors.greyele,
                            overflow: TextOverflow.ellipsis,
                          ),
                          children: [
                            TextSpan(
                              text: villeInTitle,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        subtile,
                        style: TextStyle(
                            fontSize: 12,
                            color: ConstantColors.greyele,
                            fontWeight: FontWeight.w200),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                time,
                style: TextStyle(color: ConstantColors.greyele),
              ),
            )
          ],
        ),
      ),
    );
  }
}
