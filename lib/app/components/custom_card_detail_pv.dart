import 'package:flutter/material.dart';

import '../../utils/constants/color_constant.dart';

class CustomCardDetailPv extends StatelessWidget {
  final List<DetailPvListTile> detailsList;
  const CustomCardDetailPv({super.key, required this.detailsList});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
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
        children: detailsList,
      ),
    );
  }
}

class DetailPvListTile extends StatelessWidget {
  final String title;
  final String value;

  const DetailPvListTile({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: ConstantColors.greyele,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}

class ScoreCandidatWidget extends StatelessWidget {
  final String imageCandidat;
  final String nomCandidat;
  final String scoreCandidat;

  const ScoreCandidatWidget(
      {super.key,
      required this.imageCandidat,
      required this.nomCandidat,
      required this.scoreCandidat});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
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
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(imageCandidat),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nomCandidat,
                style: TextStyle(
                  color: ConstantColors.greyele,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                scoreCandidat,
                style: TextStyle(
                  color: Color(0xff2E3F69),
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
