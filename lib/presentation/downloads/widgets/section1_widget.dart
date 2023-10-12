//section 1

import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../core/constants.dart';

class SmartDownloads extends StatelessWidget {
  const SmartDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.settings,
          color: kwhiteColor,
        ),
        kwidth,
        Text('Smart Downlods')
      ],
    );
  }
}
