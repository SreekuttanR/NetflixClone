import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/downloads/downloads_bloc.dart';
import '../../../application/home_page/home_page_bloc.dart';
import '../../../core/constants.dart';
import '../../search/widgets/main_title_widget.dart';
import 'main_card_widget.dart';

class MainTitleCard2 extends StatelessWidget {
  final String mainTitle;

  const MainTitleCard2({
    Key? key,
    required this.mainTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImage());
    });
    final screenSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitleWidget(
          title: mainTitle,
        ),
        kheight,
        BlocBuilder<HomePageBloc, HomePageState>(
          builder: (context, state) {
            return BlocBuilder<DownloadsBloc, DownloadsState>(
              builder: (context, state) {
                return SizedBox(
                  height: screenSize.height * 0.23,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Maincard(
                      imageUrl: state.downloads?.isNotEmpty == true &&
                                  state.downloads!.isNotEmpty
                              ? '$imageAppentUrl${state.downloads?[index].posterPath ?? ''}'
                              : null,
                    ),
                    separatorBuilder: (context, index) => kwidth,
                    itemCount: 10,
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
