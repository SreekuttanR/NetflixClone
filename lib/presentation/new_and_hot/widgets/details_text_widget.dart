import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../core/constants.dart';

class DeatailsTaxt extends StatelessWidget {
  final String titleText;
  final String discription;

  const DeatailsTaxt(
      {Key? key,  required this.titleText, required this.discription})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText,
          overflow: TextOverflow.ellipsis,
          //'TALL GIRL 2',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        kheight,
        //Discription

        Text(
          discription,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,

          //'Landing the lead in the school musical is a\ndream come true for jodi, until the pressure\nsends there confidence - and her relationship - \ninto a tailspin.',
          style: const TextStyle(
            color: kgreyColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
