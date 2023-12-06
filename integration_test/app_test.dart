import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:movie_app/bloc/now_playing/movie_now_playing_cubit.dart';
import 'package:movie_app/bloc/popular/movie_popular_cubit.dart';
import 'package:movie_app/bloc/upcoming/movie_upcoming_cubit.dart';
import 'package:movie_app/models/movie_model.dart';
import 'package:movie_app/pages/home/home_page.dart';
import 'package:movie_app/pages/search/search_page.dart';
import 'package:movie_app/repositories/movie_repository.dart';
import 'package:movie_app/main.dart' as app;

class MockMovieRepository extends Mock implements MovieRepository {}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  late MockMovieRepository mockMovieRepository;

  const movies = <MovieModel>[
    MovieModel(
      adult: false,
      backdropPath: 'test path',
      originalTitle: 'test title 1',
      overview: 'test overview',
      voteAverage: 5.0,
    ),
    MovieModel(
      adult: false,
      backdropPath: 'test path',
      originalTitle: 'test title 2',
      overview: 'test overview',
      voteAverage: 5.0,
    ),
    MovieModel(
      adult: false,
      backdropPath: 'test path',
      originalTitle: 'test title 3',
      overview: 'test overview',
      voteAverage: 5.0,
    ),
  ];

  setUp(() {
    mockMovieRepository = MockMovieRepository();
  });

  void arrangeRepositoryRequestFor2Seconds() {
    when(() => mockMovieRepository.getPopular()).thenAnswer(
      (invocation) async {
        await Future.delayed(const Duration(seconds: 2));
        return right(movies);
      },
    );
  }

  Widget createWidgetUnderTest() {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => MovieUpcomingCubit.create()),
        BlocProvider(create: (_) => MovieNowPlayingCubit.create()),
        BlocProvider(create: (_) => MoviePopularCubit.create()),
      ],
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }

  testWidgets(
    'end to end test',
    (tester) async {
      app.main();
      await tester.pumpAndSettle();
      arrangeRepositoryRequestFor2Seconds();
      await tester.pumpWidget(createWidgetUnderTest());
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();

      expect(find.byType(SearchPage), findsOneWidget);
    },
  );
}
