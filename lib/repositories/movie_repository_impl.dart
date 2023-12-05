import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../data/remote/movie_service.dart';
import '../injector.dart';
import '../utils/dio_error_helper.dart';
import 'movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieService _movieService;

  const MovieRepositoryImpl(this._movieService);

  factory MovieRepositoryImpl.create() => MovieRepositoryImpl(getIt.get());

  @override
  ReturnMovieRepo getNowPlaying() async {
    try {
      final result = await _movieService.getNowPlaying();
      return Right(result);
    } on DioException catch (dioError) {
      return Left(DioErrorHelper.exception(dioError));
    } catch (e) {
      return Left(Exception(e));
    }
  }

  @override
  ReturnMovieRepo getPopular() async {
    try {
      final result = await _movieService.getPopular();
      return Right(result);
    } on DioException catch (dioError) {
      return Left(DioErrorHelper.exception(dioError));
    } catch (e) {
      return Left(Exception(e));
    }
  }

  @override
  ReturnMovieRepo getUpcoming() async {
    try {
      final result = await _movieService.getUpcoming();
      return Right(result);
    } on DioException catch (dioError) {
      return Left(DioErrorHelper.exception(dioError));
    } catch (e) {
      return Left(Exception(e));
    }
  }
}
