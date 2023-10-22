//Coming Soon Widget
import 'package:flutter/material.dart';
import 'package:netflix/presentation/new_and_hot/widgets/video_widget.dart';

import '../../../core/colors.dart';
import '../../../core/constants.dart';
import 'costom_button_widget.dart';
import 'details_text_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  final String? posterpath;
  final String? title;
  final String? overview;
  final String? month;
  final String? date;

  const ComingSoonWidget({
    Key? key,
    required this.title,
    required this.posterpath,
    required this.overview,
    required this.month,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Row(
      children: [
        Row(
          children: [
            //Date Section

            SizedBox(
              width: screensize.width * 0.15,
              height: screensize.height * 0.59,
              child: Column(
                children: [
                  Text(
                    month ?? '',
                    style: TextStyle(
                      color: kgreyColor,
                      fontSize: screensize.width * 0.04,
                    ),
                  ),
                  Text(
                    date ?? '',
                    style: TextStyle(
                      fontSize: screensize.width * 0.08,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            //Image And Details Section

            SizedBox(
              width: screensize.width * 0.85,
              //height: screensize.height * 0.59,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Video Section

                  VideoWidget(
                    imageUrl: posterpath ?? '',
                  ),
                  //Title And Icons Section

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //Title
                      SizedBox(
                        width: screensize.width * 0.5,
                        child: Text(
                          title ?? '',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          //'TALLGIRL2',
                          style: TextStyle(
                            //letterSpacing: -5,
                            fontSize: screensize.width * 0.07,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      //  Icons
                      CostomButtonWidget(
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: screensize.width * 0.02,
                              color: kgreyColor),
                          iconData: const Icon(
                            Icons.notifications_sharp,
                            color: kwhiteColor,
                          ),
                          textData: '    Remind me     '),
                      CostomButtonWidget(
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: screensize.width * 0.02,
                              color: kgreyColor),
                          iconData: const Icon(
                            Icons.info_outline,
                            color: kwhiteColor,
                          ),
                          textData: 'info'),
                    ],
                  ),
                  //Deatails section

                  //Coming Date

                  Text(
                    'Coming on $month-$date',
                    style: TextStyle(
                      fontSize: screensize.width * 0.04,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  kheight,
                  //Title And discription

                  DeatailsTaxt(
                    titleText: title ?? '',
                    discription: overview ?? '',
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
