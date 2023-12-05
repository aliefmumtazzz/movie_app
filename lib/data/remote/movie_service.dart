import 'dart:convert';
import '../../constants/api.dart';
import '../../injector.dart';
import '../../models/movie_model.dart';
import 'base_service.dart';

typedef MovieReturn = Future<List<MovieModel>>;

class MovieService {
  final BaseService _baseService;

  const MovieService(this._baseService);

  factory MovieService.create() => MovieService(getIt.get());

  MovieReturn getNowPlaying() async => _getResponse(Api.nowPlaying);

  MovieReturn getPopular() async => _getResponse(Api.popular);

  MovieReturn getUpcoming() async => _getResponse(Api.upcoming);

  MovieReturn _getResponse(String url) async {
    final response = await _baseService.dio.get(url);
    final data = jsonDecode(response.data);
    final result = List<MovieModel>.from(
      data['results'].map((x) => MovieModel.fromJson(x)),
    );
    return result;
  }
}
