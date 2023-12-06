import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/now_playing/movie_now_playing_cubit.dart';
import '../../bloc/popular/movie_popular_cubit.dart';
import '../../bloc/upcoming/movie_upcoming_cubit.dart';
import '../../injector.dart';
import '../search/search_page.dart';
import 'widget/row_list_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    getIt.get<MovieNowPlayingCubit>().getNowPlaying();
    getIt.get<MoviePopularCubit>().getPopular();
    getIt.get<MovieUpcomingCubit>().getUpcoming();
  }

  @override
  void dispose() {
    getIt.get<MoviePopularCubit>().close();
    getIt.get<MovieNowPlayingCubit>().close();
    getIt.get<MovieUpcomingCubit>().close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Movie App',
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BlocBuilder<MovieNowPlayingCubit, MovieNowPlayingState>(
                builder: (context, state) => state.maybeWhen(
                  orElse: () => const SizedBox.shrink(),
                  error: (error) => Text(error.toString()),
                  success: (data) => RowListWidget(
                    movies: data,
                    title: 'Now Playing',
                  ),
                ),
              ),
              BlocBuilder<MoviePopularCubit, MoviePopularState>(
                builder: (context, state) => state.maybeWhen(
                  orElse: () => const SizedBox.shrink(),
                  error: (error) => Text(error.toString()),
                  success: (data) => RowListWidget(
                    movies: data,
                    title: 'Popular',
                  ),
                ),
              ),
              BlocBuilder<MovieUpcomingCubit, MovieUpcomingState>(
                builder: (context, state) => state.maybeWhen(
                  orElse: () => const SizedBox.shrink(),
                  error: (error) => Text(error.toString()),
                  success: (data) => RowListWidget(
                    movies: data,
                    title: 'Upcoming',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const SearchPage()),
        ),
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.search, color: Colors.white),
      ),
    );
  }
}
