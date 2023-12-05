part of 'movie_upcoming_cubit.dart';

@freezed
class MovieUpcomingState with _$MovieUpcomingState {
  const factory MovieUpcomingState.initial() = MovieUpcomingInitialState;
  const factory MovieUpcomingState.loading() = MovieUpcomingLoadingState;
  const factory MovieUpcomingState.success(List<MovieModel> data) =
      MovieUpcomingSuccessState;
  const factory MovieUpcomingState.error(Exception error) =
      MovieUpcomingErrorState;
}
