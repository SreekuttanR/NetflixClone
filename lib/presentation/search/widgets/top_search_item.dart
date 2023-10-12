import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/colors.dart';

class TopSearchItem extends StatelessWidget {
  const TopSearchItem({
    Key? key,
    required this.imageUrl,
    required this.movieName,
  }) : super(key: key);
  final String? imageUrl;
  final String? movieName;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.3,
          height: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl ?? ''),
            ),
          ),
        ),
        Expanded(
          child: Text(
            movieName ?? '',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: kwhiteColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const CircleAvatar(
          radius: 25,
          backgroundColor: kwhiteColor,
          child: CircleAvatar(
              radius: 23,
              backgroundColor: kblackColor,
              child: Icon(
                CupertinoIcons.play_fill,
                color: kwhiteColor,
                size: 20,
              )),
        ),
      ],
    );
  }
}
