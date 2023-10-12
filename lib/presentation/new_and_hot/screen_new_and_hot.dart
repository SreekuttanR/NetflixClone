import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../../core/constants.dart';
import '../../application/new_and_hot/new_and_hot_bloc.dart';
import '../../core/colors.dart';
import 'widgets/coming_soon_widget.dart';
import 'widgets/everiones_watching_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<NewAndHotBloc>(context)
          .add(const NewAndHotEvent.getComingSoon());
    });
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        //App Bar Section

        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            //Title

            title: const Text(
              'New & Hot',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
            //Icons

            actions: [
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
                  )),
              kwidth,
            ],
            //TapBar
            bottom: TabBar(
                indicatorWeight: 0.01,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.tab,
                labelStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                labelColor: kblackColor,
                unselectedLabelColor: kwhiteColor,
                indicator: BoxDecoration(
                  color: kwhiteColor,
                  borderRadius: kradius30,
                ),
                tabs: const [
                  Tab(
                    text: '🍿 Coming Soon',
                  ),
                  Tab(
                    text: "👀 Everyone's Watching",
                  )
                ]),
          ),
        ),
        //TapBar View

        body: BlocBuilder<NewAndHotBloc, NewAndHotState>(
          builder: (context, state) {
            if (state.isLoading) {
              const Center(
                child: CircularProgressIndicator(),
              );
            }
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
                              BlocProvider.of<NewAndHotBloc>(context)
                                  .add(const NewAndHotEvent.getComingSoon());
                            });
                          },
                          child: const Text('Retry'))
                    ],
                  ),
                ],
              );
            }
            return const TabBarView(children: [
              BuildComingsoon(),
              BuildEverionesWatching(),
            ]);
          },
        ),
      ),
    );
  }
}

//ComingSoon Widget List

class BuildComingsoon extends StatelessWidget {
  const BuildComingsoon({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<NewAndHotBloc>(context)
          .add(const NewAndHotEvent.getComingSoon());
    });
    return BlocBuilder<NewAndHotBloc, NewAndHotState>(
      builder: (context, state) {
        return state.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : RefreshIndicator(
                onRefresh: () async {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    BlocProvider.of<NewAndHotBloc>(context)
                        .add(const NewAndHotEvent.getComingSoon());
                  });
                },
                child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final movie = state.comingSoon?.isNotEmpty == true &&
                            state.comingSoon!.isNotEmpty
                        // ignore: unnecessary_string_interpolations
                        ? '${state.comingSoon?[index].releaseDate ?? ''}'
                        : null;

                    final dates = DateTime.parse(movie ?? '');
                    final formatedDate =
                        DateFormat.yMMMMd('en_US').format(dates);
                    return ComingSoonWidget(
                      title: state.comingSoon?.isNotEmpty == true &&
                              state.comingSoon!.isNotEmpty
                          // ignore: unnecessary_string_interpolations
                          ? '${state.comingSoon?[index].title ?? ''}'
                          : null,
                      posterpath: state.comingSoon?.isNotEmpty == true &&
                              state.comingSoon!.isNotEmpty
                          ? '$imageAppentUrl${state.comingSoon?[index].posterPath ?? ''}'
                          : null,
                      overview: state.comingSoon?.isNotEmpty == true &&
                              state.comingSoon!.isNotEmpty
                          // ignore: unnecessary_string_interpolations
                          ? '${state.comingSoon?[index].overview ?? ''}'
                          : null,
                      month: formatedDate
                          .split(' ')
                          .first
                          .substring(0, 3)
                          .toUpperCase(),
                      date: movie?.split('_').first.substring(6, 7),
                    );
                  },
                  separatorBuilder: (context, index) => kheight,
                  itemCount: 9,
                ),
              );
      },
    );
  }
}

//Everyones Watching Widget List

class BuildEverionesWatching extends StatelessWidget {
  const BuildEverionesWatching({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<NewAndHotBloc>(context)
          .add(const NewAndHotEvent.getEvorionesWatching());
    });
    return BlocBuilder<NewAndHotBloc, NewAndHotState>(
      builder: (context, state) {
        return state.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : RefreshIndicator(
                onRefresh: () async {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    BlocProvider.of<NewAndHotBloc>(context)
                        .add(const NewAndHotEvent.getComingSoon());
                  });
                },
                child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => EveryonesWatchingWidget(
                    posterpath: state.evorionesWatching?.isNotEmpty == true &&
                            state.evorionesWatching!.isNotEmpty
                        ? '$imageAppentUrl${state.evorionesWatching?[index].posterPath ?? ''}'
                        : null,
                    title: state.evorionesWatching?.isNotEmpty == true &&
                            state.evorionesWatching!.isNotEmpty
                        // ignore: unnecessary_string_interpolations
                        ? '${state.evorionesWatching?[index].title ?? ''}'
                        : null,
                    overview: state.evorionesWatching?.isNotEmpty == true &&
                            state.evorionesWatching!.isNotEmpty
                        // ignore: unnecessary_string_interpolations
                        ? '${state.evorionesWatching?[index].overview ?? ''}'
                        : null,
                  ),
                  separatorBuilder: (context, index) => kheight,
                  itemCount: 9,
                ),
              );
      },
    );
  }
}
