
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/search/widgets/top_search_item.dart';
import '../../../core/colors.dart';
import 'main_title_widget.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context)
          .add(const SearchEvent.getDownloadsImage());
    });
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const MainTitleWidget(title: 'Top Searches'),
      kheight,
      Expanded(
        child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
                if (state.hasError == true) {
                return  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      const Icon(Icons.network_wifi,size: 30,color: kwhiteColor,),
                       const Text('No Internet Connection'),
                       TextButton(onPressed: (){
                         WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context)
          .add(const SearchEvent.getDownloadsImage());
    });
                       }, 
                       child: const Text('Retry'))
                    ],),
                  ],
                );
              }
            return 
            state.isLoading? 
                  const Center(child: CircularProgressIndicator(),):
                   ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => TopSearchItem(
                movieName:  state.downloads?.isNotEmpty == true &&
                        state.downloads!.isNotEmpty
                    // ignore: unnecessary_string_interpolations
                    ? '${state.downloads?[index].title ?? ''}'
                    : null,
                imageUrl: state.downloads?.isNotEmpty == true &&
                        state.downloads!.isNotEmpty
                    ? '$imageAppentUrl${state.downloads?[index].posterPath ?? ''}'
                    : null,
              ),
              separatorBuilder: (context, index) => kheight20,
              itemCount: state.downloads!.length,
            );
          },
        ),
      ),
    ]);
  }
}

