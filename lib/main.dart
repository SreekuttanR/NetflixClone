import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/application/home_page/home_page_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/presentation/main_page/main_page.dart';
import 'application/downloads/downloads_bloc.dart';
import 'application/fast_and_laugh/fast_and_laugh_bloc.dart';
import 'application/new_and_hot/new_and_hot_bloc.dart';
import 'core/colors.dart';
import 'domain/core/di/injectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureIngection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<DownloadsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<SearchBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<FastAndLaughBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<NewAndHotBloc>(),
        ),
         BlocProvider(
          create: (context) => getIt<HomePageBloc>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
          //fontFamily: 'Montserrat',
          fontFamily: GoogleFonts.montserrat().fontFamily,
          scaffoldBackgroundColor: backgrountColor,
          textTheme: const TextTheme(
              // ignore: deprecated_member_use
              bodyText1: TextStyle(color: Colors.white),
              // ignore: deprecated_member_use
              bodyText2: TextStyle(color: Colors.white)),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ScreenMainPage(),
      ),
    );
  }
}
