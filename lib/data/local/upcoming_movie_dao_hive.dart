import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';

import '../../constants/box.dart';
import '../../models/movie_model.dart';
import 'dao_hive.dart';

class UpcomingMovieDaoHive implements DaoHive {
  const UpcomingMovieDaoHive();

  factory UpcomingMovieDaoHive.create() => const UpcomingMovieDaoHive();

  @override
  Future<List<MovieModel>> getMovies() async {
    await Hive.openBox(MovieBox.upcomingBox);
    final box = Hive.box(MovieBox.upcomingBox);
    final upcomingLocal = await box.get(MovieBox.upcomingKey);
    if (upcomingLocal != null) {
      final data = List<MovieModel>.from(
        json.decode(upcomingLocal).map((x) => MovieModel.fromJson(x)),
      );
      return data;
    }
    return [];
  }

  @override
  void saveMovies(List<MovieModel> movies) async {
    await Hive.openBox(MovieBox.upcomingBox);
    final box = Hive.box(MovieBox.upcomingBox);
    final data = List<dynamic>.from((movies.map((e) => e.toJson())));
    box.put(MovieBox.upcomingKey, jsonEncode(data));
  }
}
