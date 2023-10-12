import 'package:flutter/material.dart';

import '../../../core/constants.dart';

class Maincard extends StatelessWidget {
  final String? imageUrl;
  const Maincard({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: screenSize.width * 0.3,
      height: screenSize.height * 0.2,
      decoration: BoxDecoration(
          borderRadius: borderRadius10,
          image:  DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(imageUrl??''))),
    );
  }
}
