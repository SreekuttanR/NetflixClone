import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/downloads/downloads_bloc.dart';
import '../../../core/colors.dart';
import '../../new_and_hot/widgets/costom_button_widget.dart';

class BackgroundCard extends StatelessWidget {
  final String? imageurl;
  const BackgroundCard({Key? key,required this.imageurl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            return Container(
              width: double.infinity,
              height: screenSize.height * 0.79,
              decoration:  BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imageurl ?? ''),
                ),
              ),
            );
          },
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CostomButtonWidget(
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  iconData: Icon(
                    Icons.add,
                    size: 35,
                    color: kwhiteColor,
                  ),
                  textData: 'My List',
                ),
                _playButton(),
                const CostomButtonWidget(
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  iconData: Icon(
                    Icons.info,
                    size: 35,
                    color: kwhiteColor,
                  ),
                  textData: 'Info',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Padding _playButton() {
    return Padding(
      padding:
          const EdgeInsetsDirectional.symmetric(horizontal: 15, vertical: 10),
      child: TextButton.icon(
        onPressed: () {},
        style: ButtonStyle(
            shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            )),
            backgroundColor: const MaterialStatePropertyAll(kwhiteColor)),
        icon: const Icon(
          Icons.play_arrow,
          size: 30,
          color: kblackColor,
        ),
        label: const Padding(
          padding: EdgeInsets.only(right: 10),
          child: Text(
            'Play',
            style: TextStyle(
              color: kblackColor,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
