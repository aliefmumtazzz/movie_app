import 'package:dartz/dartz.dart';

import '../models/movie_model.dart';

typedef ReturnMovieRepo = Future<Either<Exception, List<MovieModel>>>;

abstract class MovieRepository {
  ReturnMovieRepo getNowPlaying();
  ReturnMovieRepo getPopular();
  ReturnMovieRepo getUpcoming();
}
