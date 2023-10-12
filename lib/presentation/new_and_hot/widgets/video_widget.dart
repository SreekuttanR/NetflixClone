import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';

class VideoWidget extends StatelessWidget {
  final String imageUrl;
  const VideoWidget({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Stack(
      children: [
        //Image
           Container(
              width: double.infinity,
          height: screensize.height * 0.26,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl))
          ),
           ),
    
        //Mute Icon IN Image

        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            backgroundColor: Colors.black.withOpacity(0.5),
            radius: 30,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.volume_up,
                  color: kwhiteColor,
                  size: 22,
                )),
          ),
        ),
      ],
    );
  }
}
