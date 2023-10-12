import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/home_page/home_page_bloc.dart';
import '../../../core/constants.dart';
import '../../search/widgets/main_title_widget.dart';
import 'main_card_widget.dart';

class MainTitleCard1 extends StatelessWidget {
  final String mainTitle;

  const MainTitleCard1({
    Key? key,
    required this.mainTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomePageBloc>(context)
          .add(const HomePageEvent.getComingSoon());
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
            return SizedBox(
              height: screenSize.height * 0.23,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Maincard(
                  imageUrl: state.trendingNowList?.isNotEmpty == true &&
                          state.trendingNowList!.isNotEmpty
                      ? '$imageAppentUrl${state.trendingNowList?[index].posterPath ?? ''}'
                      : null,
                ),
                separatorBuilder: (context, index) => kwidth,
                itemCount: 10,
              ),
            );
          },
        ),
      ],
    );
  }
}
