import 'package:flutter/material.dart';
import '../../core/colors.dart';
import '../downloads/screen_downloads.dart';
import '../fast_laugh/screen_fast_and_laugh.dart';
import '../home/screen_home.dart';
import '../new_and_hot/screen_new_and_hot.dart';
import '../search/screen_search.dart';
import 'widgets/bottom_navigation_widget.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({Key? key}) : super(key: key);
  final _pages = [
    const ScreenHome(),
    const ScreenNewAndHot(),
    ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownlods()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrountColor,
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexchangeNotifier,
          builder: (context, int intex, _) {
            return _pages[intex];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
