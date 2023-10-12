import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/new_and_hot/new_and_hot_bloc.dart';
import 'package:netflix/presentation/home/widgets/background_card_widget.dart';
import 'package:netflix/presentation/home/widgets/main_title_widget.dart';
import 'package:netflix/presentation/home/widgets/main_title_widget_2.dart';
import 'package:netflix/presentation/home/widgets/number_title_card.dart';

import '../../application/downloads/downloads_bloc.dart';
import '../../core/colors.dart';
import '../../core/constants.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImage());
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<NewAndHotBloc>(context)
          .add(const NewAndHotEvent.getComingSoon());
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<NewAndHotBloc>(context)
          .add(const NewAndHotEvent.getEvorionesWatching());
    });
    return NotificationListener<UserScrollNotification>(
      onNotification: (notification) {
        final ScrollDirection direction = notification.direction;
        if (direction == ScrollDirection.reverse) {
          scrollNotifier.value = false;
        } else if (direction == ScrollDirection.forward) {
          scrollNotifier.value = true;
        }
        return true;
      },
      child: Scaffold(
          body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (context, value, _) {
          return Padding(
            padding: const EdgeInsets.all(11),
            child: Stack(
              children: [
                BlocBuilder<NewAndHotBloc, NewAndHotState>(
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
                                    WidgetsBinding.instance
                                        .addPostFrameCallback((_) {
                                      BlocProvider.of<NewAndHotBloc>(context)
                                          .add(const NewAndHotEvent
                                              .getComingSoon());
                                    });
                                  },
                                  child: const Text('Retry'))
                            ],
                          ),
                        ],
                      );
                    }
                    return state.isLoading
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : RefreshIndicator(
                            onRefresh: () async {
                              WidgetsBinding.instance.addPostFrameCallback((_) {
                                BlocProvider.of<DownloadsBloc>(context).add(
                                    const DownloadsEvent.getDownloadsImage());
                              });
                              WidgetsBinding.instance.addPostFrameCallback((_) {
                                BlocProvider.of<NewAndHotBloc>(context)
                                    .add(const NewAndHotEvent.getComingSoon());
                              });
                              WidgetsBinding.instance.addPostFrameCallback((_) {
                                BlocProvider.of<NewAndHotBloc>(context).add(
                                    const NewAndHotEvent
                                        .getEvorionesWatching());
                              });
                            },
                            child: BlocBuilder<DownloadsBloc, DownloadsState>(
                              builder: (context, state) {
                                return ListView(
                                  children: [
                                    //first section
                                    BackgroundCard(
                                      imageurl: state.downloads!.length > 1 &&
                                              state.downloads!.length > 1
                                          ? '$imageAppentUrl${state.downloads![1].posterPath ?? ''}'
                                          : null,
                                    ),
                                    const MainTitleCard1(
                                      mainTitle: 'Released in the Past Year',
                                    ),
                                    kheight,
                                    const MainTitleCard2(
                                      mainTitle: 'Trending Now',
                                    ),
                                    kheight,
                                    //special card widget
                                    const NumberTitleCard1(),
                                    kheight,
                                    const MainTitleCard1(
                                      mainTitle: 'Tense Dramas',
                                    ),
                                    kheight,
                                    const MainTitleCard2(
                                      mainTitle: 'South Indian Cinema',
                                    ),
                                  ],
                                );
                              },
                            ),
                          );
                  },
                ),
                scrollNotifier.value == true
                    ? AnimatedContainer(
                        duration: const Duration(milliseconds: 1000),
                        width: double.infinity,
                        height: 90,
                        color: Colors.black.withOpacity(0.5),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'images/Netflix-Symbol.png',
                                  width: 60,
                                  height: 60,
                                ),
                                const Spacer(),
                                const Spacer(),
                                const Icon(
                                  Icons.cast,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                kwidth,
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.settings,
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('TV Shows', style: khomeTextStyle),
                                Text('Movies', style: khomeTextStyle),
                                Text('Categories', style: khomeTextStyle),
                              ],
                            )
                          ],
                        ),
                      )
                    : kheight,
              ],
            ),
          );
        },
      )),
    );
  }
}
