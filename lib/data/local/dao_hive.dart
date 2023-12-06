import '../../models/movie_model.dart';

abstract class DaoHive {
  Future<List<MovieModel>> getMovies();

  void saveMovies(List<MovieModel> movies);
}
