import 'dart:convert';

import '../../constants/api.dart';
import '../../injector.dart';
import '../../models/movie_model.dart';
import '../local/now_playing_movie_dao_hive.dart';
import '../local/popular_moviee_dao_hive.dart';
import '../local/upcoming_movie_dao_hive.dart';
import 'base_service.dart';

typedef MovieReturn = Future<List<MovieModel>>;

enum MovieType { nowPlaying, popular, upcoming }

class MovieService {
  final BaseService _baseService;

  const MovieService(this._baseService);

  factory MovieService.create() => MovieService(getIt.get());

  MovieReturn getNowPlaying() async {
    return _getResponse(Api.nowPlaying, MovieType.nowPlaying);
  }

  MovieReturn getPopular() async {
    return _getResponse(Api.popular, MovieType.popular);
  }

  MovieReturn getUpcoming() async {
    return _getResponse(Api.upcoming, MovieType.upcoming);
  }

  MovieReturn _getResponse(String url, MovieType type) async {
    final nowPlayingDaoHive = getIt.get<NowPlayingMovieDaoHive>();
    final nowPlayingCache = await nowPlayingDaoHive.getMovies();

    final popularDaoHive = getIt.get<PopularMovieDaoHive>();
    final popularCache = await popularDaoHive.getMovies();

    final upcomingDaoHive = getIt.get<UpcomingMovieDaoHive>();
    final upcomingCache = await upcomingDaoHive.getMovies();

    if (nowPlayingCache.isEmpty &&
        popularCache.isEmpty &&
        upcomingCache.isEmpty) {
      final response = await _baseService.dio.get(url);
      final data = jsonDecode(response.data);
      final result = List<MovieModel>.from(
        data['results'].map((x) => MovieModel.fromJson(x)),
      );

      if (type == MovieType.nowPlaying) {
        nowPlayingDaoHive.saveMovies(result);
      } else if (type == MovieType.popular) {
        popularDaoHive.saveMovies(result);
      } else {
        upcomingDaoHive.saveMovies(result);
      }

      return result;
    }

    if (type == MovieType.nowPlaying) {
      return nowPlayingCache;
    } else if (type == MovieType.popular) {
      return popularCache;
    } else {
      return upcomingCache;
    }
  }
}
