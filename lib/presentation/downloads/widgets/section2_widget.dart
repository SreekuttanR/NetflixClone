//section 2 
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/downloads/downloads_bloc.dart';
import 'package:netflix/core/colors.dart';
import '../../../core/constants.dart';
import 'downloads_image_widget.dart';

class Section2 extends StatelessWidget {
  const Section2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImage());
    });
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Indroducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kwhiteColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        kheight,
        const Text(
          '''We will download a personalised selected of\nmoveis and shows for you,so there's\nalways somthing to watch on your\ndevice''',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kTextColorGrey,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            return SizedBox(
              width: size.width,
              height: size.width,
              child: state.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                            radius: size.width * 0.4,
                            backgroundColor: Colors.grey.shade800),
                        DownloadsImageWidget(
                          imageList: state.downloads?.isNotEmpty == true &&
                                  state.downloads!.isNotEmpty
                              ? '$imageAppentUrl${state.downloads?[0].posterPath ?? ''}'
                              : null,
                          angle: 20,
                          margin: const EdgeInsets.only(left: 170),
                          size: Size(size.width * 0.4, size.width * 0.58),
                        ),
                        DownloadsImageWidget(
                          imageList: state.downloads!.length > 1 &&
                                  state.downloads!.length > 1
                              ? '$imageAppentUrl${state.downloads![1].posterPath ?? ''}'
                              : null,
                          angle: -20,
                          margin: const EdgeInsets.only(right: 170),
                          size: Size(size.width * 0.4, size.width * 0.58),
                        ),
                        DownloadsImageWidget(
                          imageList: state.downloads!.length > 2 &&
                                  state.downloads!.length > 2
                              ? '$imageAppentUrl${state.downloads?[2].posterPath ?? ''}'
                              : null,
                          angle: 0,
                          margin: const EdgeInsets.only(top: 35),
                          size: Size(size.width * 0.47, size.width * 0.63),
                          borderRadius: 5,
                        ),
                      ],
                    ),
            );
          },
        )
      ],
    );
  }
}
