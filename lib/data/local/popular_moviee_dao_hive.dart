import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';

import '../../constants/box.dart';
import '../../models/movie_model.dart';
import 'dao_hive.dart';

class PopularMovieDaoHive implements DaoHive {
  const PopularMovieDaoHive();

  factory PopularMovieDaoHive.create() => const PopularMovieDaoHive();

  @override
  Future<List<MovieModel>> getMovies() async {
    await Hive.openBox(MovieBox.popularBox);
    final box = Hive.box(MovieBox.popularBox);
    final popularLocal = await box.get(MovieBox.popularKey);
    if (popularLocal != null) {
      final data = List<MovieModel>.from(
        json.decode(popularLocal).map((x) => MovieModel.fromJson(x)),
      );
      return data;
    }
    return [];
  }

  @override
  void saveMovies(List<MovieModel> movies) async {
    await Hive.openBox(MovieBox.popularBox);
    final box = Hive.box(MovieBox.popularBox);
    final data = List<dynamic>.from((movies.map((e) => e.toJson())));
    box.put(MovieBox.popularKey, jsonEncode(data));
  }
}
