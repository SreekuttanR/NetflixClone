import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/home_page/home_page_bloc.dart';
import '../../../core/constants.dart';
import '../../search/widgets/main_title_widget.dart';
import 'number_card_widget.dart';

class NumberTitleCard1 extends StatelessWidget {
  const NumberTitleCard1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomePageBloc>(context)
          .add(const HomePageEvent.getEvorionesWatching());
    });
    final screenSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainTitleWidget(
          title: 'Top 10 Tv Shows In India Today',
        ),
        kheight,
        BlocBuilder<HomePageBloc, HomePageState>(
          builder: (context, state) {
            return SizedBox(
              height: screenSize.height * 0.23,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => NumberCard(
                  imageUrl: state.topTenList?.isNotEmpty == true &&
                          state.topTenList!.isNotEmpty
                      ? '$imageAppentUrl${state.topTenList?[index].posterPath ?? ''}'
                      : null,
                  indexNumber: index,
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
