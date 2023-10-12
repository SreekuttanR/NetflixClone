//section 3

import 'package:flutter/material.dart';
import '../../../core/colors.dart';
import '../../../core/constants.dart';

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            color: kButtenColorBlue,
            onPressed: () {},
            child:  Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'set up',
                style: TextStyle(
                    color: kwhiteColor,
                    fontSize: size.width*0.045,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        kheight,
        MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          color: kButtenColorWhite,
          onPressed: () {},
          child:  Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can download',
              style: TextStyle(
                  color: kblackColor,
                  fontSize: size.width*0.04,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}