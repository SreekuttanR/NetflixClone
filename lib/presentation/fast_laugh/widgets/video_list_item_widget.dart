import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/presentation/fast_laugh/widgets/video_action_widget.dart';
import 'package:video_player/video_player.dart';

class VideoListItem extends StatefulWidget {
  final int index;
  final String? reelUrl;
  final String? imageurl;

  const VideoListItem({
    Key? key,
    required this.index,
    required this.reelUrl,
    required this.imageurl,
  }) : super(key: key);

  @override
  State<VideoListItem> createState() => _VideoListItemState();
}

class _VideoListItemState extends State<VideoListItem> {
  late VideoPlayerController _controller;
  bool isMusicOn = true;
  // [![Camera Audio Toggle][2]][2]
  @override
  void initState() {
    super.initState();
    _controller =
        VideoPlayerController.networkUrl(Uri.parse(widget.reelUrl ?? ''));
    _controller.initialize().then((value) {
      // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
      setState(() {
        _controller.play();
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),

      //left side

      Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Colors.black.withOpacity(0.5),
                radius: 30,
                child: IconButton(
                    onPressed: () {
                      soundToggle();
                    },
                    icon: Icon(
                      isMusicOn == true ? Icons.volume_up : Icons.volume_off,
                      color: Colors.white,
                    )),
              ),
              //right side
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 30,
                      backgroundImage: NetworkImage(widget.imageurl ?? ''),
                    ),
                  ),
                  const VideoActionsWidget(
                      icondata: Icon(
                        Icons.emoji_emotions,
                        size: 30,
                        color: kwhiteColor,
                      ),
                      icontext: 'LOL'),
                  const VideoActionsWidget(
                      icondata: Icon(
                        Icons.add,
                        size: 30,
                        color: kwhiteColor,
                      ),
                      icontext: 'My List'),
                  const VideoActionsWidget(
                      icondata: Icon(
                        Icons.share,
                        size: 30,
                        color: kwhiteColor,
                      ),
                      icontext: 'Share'),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              _controller.value.isPlaying
                                  ? _controller.pause()
                                  : _controller.play();
                            });
                          },
                          icon: Icon(
                            _controller.value.isPlaying
                                ? Icons.pause
                                : Icons.play_arrow,
                            size: 30,
                            color: kwhiteColor,
                          ),
                          color: kwhiteColor,
                        ),
                        const Text(
                          'Play',
                          style: TextStyle(color: kwhiteColor, fontSize: 16),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ]);
  }

  void soundToggle() {
    setState(() {
      isMusicOn == false
          ? _controller.setVolume(0.0)
          : _controller.setVolume(1.0);
      isMusicOn = !isMusicOn;
    });
  }
}
