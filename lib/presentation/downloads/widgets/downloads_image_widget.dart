import 'dart:math';

import 'package:flutter/material.dart';

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    Key? key,
    required this.imageList,
    required this.margin,
    this.angle = 0,
    required this.size,
    this.borderRadius = 10,
  }) : super(key: key);

  final String? imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          margin: margin,
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageList ?? ''),
            ),
          ),
        ));
  }
}
