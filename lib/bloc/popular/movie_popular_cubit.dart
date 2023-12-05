import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injector.dart';
import '../../models/movie_model.dart';
import '../../repositories/movie_repository_impl.dart';

part 'movie_popular_cubit.freezed.dart';
part 'movie_popular_state.dart';

class MoviePopularCubit extends Cubit<MoviePopularState> {
  final MovieRepositoryImpl _movieRepositoryImpl;

  MoviePopularCubit(this._movieRepositoryImpl)
      : super(const MoviePopularState.initial());

  factory MoviePopularCubit.create() => MoviePopularCubit(getIt.get());

  void getPopular() async {
    emit(const MoviePopularState.loading());
    final result = await _movieRepositoryImpl.getPopular();
    result.fold(
      (l) => emit(MoviePopularState.error(l)),
      (r) => emit(MoviePopularState.success(r)),
    );
  }
}
