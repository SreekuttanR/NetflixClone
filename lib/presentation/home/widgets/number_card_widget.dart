import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

import '../../../core/constants.dart';

class NumberCard extends StatelessWidget {
  final int indexNumber;
  final String? imageUrl;

  const NumberCard(
      {Key? key, required this.indexNumber, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: screenSize.width * 0.05,
              height: screenSize.height * 0.23,
            ),
            Container(
              width: screenSize.width * 0.33,
              height: screenSize.height * 0.23,
              decoration: BoxDecoration(
                borderRadius: borderRadius10,
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(imageUrl ?? '')),
              ),
            ),
          ],
        ),
        Positioned(
          right: screenSize.width * 0.25,
          top: screenSize.height * 0.07,
          child: BorderedText(
            strokeWidth: screenSize.width * 0.01,
            strokeColor: Colors.white,
            child: Text(
              '${indexNumber + 1}',
              style: TextStyle(
                color: Colors.black,
                fontSize: screenSize.width * 0.24,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
                decorationColor: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
