import 'dart:convert';

import '../../constants/box.dart';
import '../../models/movie_model.dart';
import 'package:hive/hive.dart';

class NowPlayingLocalService {
  final box = Hive.box(MovieBox.nowPlayingBox);

  void save(String id, MovieModel movie) {
    final data = jsonEncode(movie.toJson());
    box.put(id, data);
  }
}
