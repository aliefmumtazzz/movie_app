import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../constants/box.dart';
import '../../models/movie_model.dart';
import 'dao_hive.dart';

class NowPlayingMovieDaoHive implements DaoHive {
  const NowPlayingMovieDaoHive();

  factory NowPlayingMovieDaoHive.create() => const NowPlayingMovieDaoHive();

  @override
  Future<List<MovieModel>> getMovies() async {
    await Hive.openBox(MovieBox.nowPlayingBox);
    final box = Hive.box(MovieBox.nowPlayingBox);
    final nowPlayingLocal = await box.get(MovieBox.nowPlayingKey);
    if (nowPlayingLocal != null) {
      final data = List<MovieModel>.from(
        json.decode(nowPlayingLocal).map((x) => MovieModel.fromJson(x)),
      );
      return data;
    }
    return [];
  }

  @override
  void saveMovies(List<MovieModel> movies) async {
    await Hive.openBox(MovieBox.nowPlayingBox);
    final box = Hive.box(MovieBox.nowPlayingBox);
    final data = List<dynamic>.from((movies.map((e) => e.toJson())));
    box.put(MovieBox.nowPlayingKey, jsonEncode(data));
  }
}
