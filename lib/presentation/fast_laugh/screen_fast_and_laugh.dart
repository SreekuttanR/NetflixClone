import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/downloads/downloads_bloc.dart';
import '../../core/colors.dart';
import '../../core/constants.dart';
import 'widgets/video_list_item_widget.dart';

class ScreenFastLaugh extends StatelessWidget {
  ScreenFastLaugh({Key? key}) : super(key: key);
  final videos = [
    "https://storage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
    "https://storage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
    "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
    "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
    "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
    "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
    "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
    "https://storage.googleapis.com/gtv-videos-bucket/sample/Sintel.jpg",
    "https://storage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4",
    "https://storage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4"
  ];
  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   BlocProvider.of<FastAndLaughBloc>(context)
    //       .add(const FastAndLaughEvent.getFastAndLaughvideo());
    // });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImage());
    });
    return Scaffold(
      body: SafeArea(child: BlocBuilder<DownloadsBloc, DownloadsState>(
        builder: (context, state) {
          if (state.hasError == true) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.network_wifi,
                      size: 30,
                      color: kwhiteColor,
                    ),
                    const Text('No Internet Connection'),
                    TextButton(
                        onPressed: () {
                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            BlocProvider.of<DownloadsBloc>(context)
                                .add(const DownloadsEvent.getDownloadsImage());
                          });
                        },
                        child: const Text('Retry'))
                  ],
                ),
              ],
            );
          }
          return PageView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 10,
              itemBuilder: (context, index) {
                if (videos.isEmpty) {
                  return const Center(
                    child: Text('no WiFi'),
                  );
                }
                return VideoListItem(
                    imageurl: state.downloads!.length > 1 &&
                            state.downloads!.length > 1
                        ? '$imageAppentUrl${state.downloads![index].posterPath ?? ''}'
                        : null,
                    index: index,
                    reelUrl: videos[index]
                    // 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4'
                    // state.fastAndLaugh!.length > 2 &&
                    //                 state.fastAndLaugh!.length > 2
                    //             ? '${state.fastAndLaugh?[2].sources ?? ''}'
                    //             : null,
                    );
              });
        },
      )),
    );
  }
}
