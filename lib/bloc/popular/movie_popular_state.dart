part of 'movie_popular_cubit.dart';

@freezed
class MoviePopularState with _$MoviePopularState {
  const factory MoviePopularState.initial() = MoviePopularInitialState;
  const factory MoviePopularState.loading() = MoviePopularLoadingState;
  const factory MoviePopularState.success(List<MovieModel> data) =
      MoviePopularSuccessState;
  const factory MoviePopularState.error(Exception error) =
      MoviePopularErrorState;
}
