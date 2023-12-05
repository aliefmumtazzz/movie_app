import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injector.dart';
import '../../models/movie_model.dart';
import '../../repositories/movie_repository_impl.dart';

part 'movie_upcoming_state.dart';
part 'movie_upcoming_cubit.freezed.dart';

class MovieUpcomingCubit extends Cubit<MovieUpcomingState> {
  final MovieRepositoryImpl _movieRepositoryImpl;

  MovieUpcomingCubit(this._movieRepositoryImpl)
      : super(const MovieUpcomingState.initial());

  factory MovieUpcomingCubit.create() => MovieUpcomingCubit(getIt.get());

  void getUpcoming() async {
    emit(const MovieUpcomingState.loading());
    final result = await _movieRepositoryImpl.getUpcoming();
    result.fold(
      (l) => emit(MovieUpcomingState.error(l)),
      (r) => emit(MovieUpcomingState.success(r)),
    );
  }
}
