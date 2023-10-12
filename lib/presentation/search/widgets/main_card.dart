import 'package:flutter/cupertino.dart';

class MainCard extends StatelessWidget {
  const MainCard({Key? key,required this.imageurl}) : super(key: key);
  final String? imageurl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          image:  DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(imageurl ?? ''))),
    );
  }
}
