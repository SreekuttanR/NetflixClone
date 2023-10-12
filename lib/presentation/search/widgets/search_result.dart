import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/core/constants.dart';
import '../../../application/search/search_bloc.dart';
import '../../../core/colors.dart';
import 'main_card.dart';
import 'main_title_widget.dart';

const imageUrl = 'images/kMI3tgxLAZbzGOVlorUBva0kriS.jpg';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add;
    });
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainTitleWidget(title: 'Movies & TV'),
        kheight,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
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
                                BlocProvider.of<SearchBloc>(context)
                                    .add(const SearchEvent.getDownloadsImage());
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
                  : GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 3,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      childAspectRatio: 1 / 1.4,
                      children: List.generate(
                          state.search!.length,
                          (index) => MainCard(
                                imageurl: state.search?.isNotEmpty == true &&
                                        state.search!.isNotEmpty
                                    ? '$imageAppentUrl${state.search?[index].posterPath ?? ''}'
                                    : null,
                              )),
                    );
            },
          ),
        ),
      ],
    );
  }
}
