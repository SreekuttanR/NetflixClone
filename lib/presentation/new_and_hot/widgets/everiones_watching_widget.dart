import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';

import '../../../core/colors.dart';
import 'costom_button_widget.dart';
import 'details_text_widget.dart';
import 'video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {

  final String? posterpath;
    final String? title;
  final String? overview;

  const EveryonesWatchingWidget({
    Key? key, required this.posterpath, required this.title, required this.overview,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kheight,
         DeatailsTaxt(
          titleText: '',
          discription:overview??'',
        ),
        kheight50,
        VideoWidget(imageUrl: posterpath??'',),
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //Icon 1

            CostomButtonWidget(
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 16, color: kgreyColor),
              iconData: Icon(
                Icons.share,
                size: 40,
                color: kwhiteColor,
              ),
              textData: 'Share',
            ),
            kwidth,
            //Icon 2

            CostomButtonWidget(
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 16, color: kgreyColor),
              iconData: Icon(
                Icons.add,
                size: 40,
                color: kwhiteColor,
              ),
              textData: 'My List',
            ),
            kwidth,
            //Icon 3

            CostomButtonWidget(
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: kgreyColor),
                iconData: Icon(
                  Icons.play_arrow,
                  size: 40,
                  color: kwhiteColor,
                ),
                textData: 'Play'),
            kwidth,
          ],
        )
      ],
    );
  }
}
