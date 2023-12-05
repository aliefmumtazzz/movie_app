import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'bloc/now_playing/movie_now_playing_cubit.dart';
import 'bloc/popular/movie_popular_cubit.dart';
import 'bloc/upcoming/movie_upcoming_cubit.dart';
import 'injector.dart';
import 'pages/home/home_page.dart';

void main() {
  runZonedGuarded<Future<void>>(
    () async {
      await Hive.initFlutter();
      await Injector.create();

      runApp(const MovieApp());
    },
    (error, stack) {
      debugPrint('$error - $stack');
    },
  );
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt.get<MovieNowPlayingCubit>()),
        BlocProvider(create: (_) => getIt.get<MoviePopularCubit>()),
        BlocProvider(create: (_) => getIt.get<MovieUpcomingCubit>()),
      ],
      child: MaterialApp(
        title: 'Movie App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
