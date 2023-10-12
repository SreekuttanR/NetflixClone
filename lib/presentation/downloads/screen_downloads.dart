import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/presentation/downloads/widgets/section1_widget.dart';
import 'package:netflix/presentation/downloads/widgets/section2_widget.dart';
import 'package:netflix/presentation/downloads/widgets/section3_widget.dart';

import '../../application/downloads/downloads_bloc.dart';
import 'widgets/appbar_widget.dart';

class ScreenDownlods extends StatelessWidget {
  ScreenDownlods({Key? key}) : super(key: key);
  final _widgetList = [
    const SmartDownloads(),
    const Section2(),
    const Section3(),
  ];
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImage());
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: 'Downloads',
          ),
        ),
        body: SafeArea(
          child: BlocBuilder<DownloadsBloc, DownloadsState>(
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
                                BlocProvider.of<DownloadsBloc>(context).add(
                                    const DownloadsEvent.getDownloadsImage());
                              });
                            },
                            child: const Text('Retry'))
                      ],
                    ),
                  ],
                );
              }
              return ListView.builder(
                padding: const EdgeInsets.all(10),
                itemBuilder: (context, index) => _widgetList[index],
                itemCount: _widgetList.length,
              );
            },
          ),
        ),
      ),
    );
  }
}
