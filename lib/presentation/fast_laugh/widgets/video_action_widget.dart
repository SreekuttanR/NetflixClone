import 'package:flutter/material.dart';

import '../../../core/colors.dart';

class VideoActionsWidget extends StatefulWidget {
  final Widget icondata;
  final String icontext;

  const VideoActionsWidget({
    Key? key,
    required this.icondata,
    required this.icontext,
  }) : super(key: key);

  @override
  State<VideoActionsWidget> createState() => _VideoActionsWidgetState();
}

class _VideoActionsWidgetState extends State<VideoActionsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: widget.icondata,
            color: kwhiteColor,
          ),
          Text(
            widget.icontext,
            style: const TextStyle(color: kwhiteColor, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
