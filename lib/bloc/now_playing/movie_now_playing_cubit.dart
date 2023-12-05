import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injector.dart';
import '../../models/movie_model.dart';
import '../../repositories/movie_repository_impl.dart';

part 'movie_now_playing_state.dart';
part 'movie_now_playing_cubit.freezed.dart';

class MovieNowPlayingCubit extends Cubit<MovieNowPlayingState> {
  final MovieRepositoryImpl _movieRepository;

  MovieNowPlayingCubit(this._movieRepository)
      : super((const MovieNowPlayingState.initial()));

  factory MovieNowPlayingCubit.create() => MovieNowPlayingCubit(getIt.get());

  void getNowPlaying() async {
    emit(const MovieNowPlayingState.loading());
    final result = await _movieRepository.getNowPlaying();
    result.fold(
      (l) => emit(MovieNowPlayingState.error(l)),
      (r) => emit(MovieNowPlayingState.success(r)),
    );
  }
}
