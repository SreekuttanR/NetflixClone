import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/presentation/search/widgets/debonce.dart';
import 'package:netflix/presentation/search/widgets/search_idle.dart';
import 'package:netflix/presentation/search/widgets/search_result.dart';
import '../../application/search/search_bloc.dart';
import '../../core/constants.dart';

class ScreenSearch extends StatelessWidget {
  ScreenSearch({Key? key}) : super(key: key);
  final _debouncer = Debouncer(milliseconds: 1000);
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context)
          .add(const SearchEvent.getDownloadsImage());
    });
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              backgroundColor: Colors.grey.withOpacity(0.4),
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
              suffixIcon: const Icon(
                CupertinoIcons.xmark_circle_fill,
                color: Colors.grey,
              ),
              style: const TextStyle(color: Colors.white),
              onChanged: (value) {
                _debouncer.run(() => BlocProvider.of<SearchBloc>(context)
                    .add(SearchEvent.getSearchImage(movieQuery: value)));
              },
            ),
            kheight,
            Expanded(child: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                if (state.search!.isEmpty) {
                  return const SearchIdleWidget();
                } else {
                  return const SearchResultWidget();
                }
              },
            )),
          ],
        ),
      )),
    );
  }
}
