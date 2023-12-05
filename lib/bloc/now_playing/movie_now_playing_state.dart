part of 'movie_now_playing_cubit.dart';

@freezed
class MovieNowPlayingState with _$MovieNowPlayingState {
  const factory MovieNowPlayingState.initial() = MovieNowPlayingInitialState;
  const factory MovieNowPlayingState.loading() = MovieNowPlayingLoadingState;
  const factory MovieNowPlayingState.success(List<MovieModel> data) =
      MovieNowPlayingSuccessState;
  const factory MovieNowPlayingState.error(Exception error) =
      MovieNowPlayingErrorState;
}
