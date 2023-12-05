import 'package:get_it/get_it.dart';

import 'bloc/now_playing/movie_now_playing_cubit.dart';
import 'bloc/popular/movie_popular_cubit.dart';
import 'bloc/upcoming/movie_upcoming_cubit.dart';
import 'data/local/now_playing_local_service.dart';
import 'data/remote/base_service.dart';
import 'data/remote/movie_service.dart';
import 'repositories/movie_repository_impl.dart';

final getIt = GetIt.instance;

class Injector {
  const Injector();

  static Future<void> create() async {
    const injector = Injector();
    injector.register();
  }

  void _onRegisterLocalService() {
    getIt.registerLazySingleton<NowPlayingLocalService>(
      () => NowPlayingLocalService(),
    );
  }

  void _onRegisterRemoteService() {
    getIt.registerLazySingleton<BaseService>(
      () => BaseService.create(),
    );
    getIt.registerLazySingleton<MovieService>(
      () => MovieService.create(),
    );
  }

  void _onRegisterCubit() {
    getIt.registerLazySingleton<MovieNowPlayingCubit>(
      () => MovieNowPlayingCubit.create(),
    );
    getIt.registerLazySingleton<MoviePopularCubit>(
      () => MoviePopularCubit.create(),
    );
    getIt.registerLazySingleton<MovieUpcomingCubit>(
      () => MovieUpcomingCubit.create(),
    );
  }

  void _onRegisterRepository() {
    getIt.registerFactory<MovieRepositoryImpl>(
      () => MovieRepositoryImpl.create(),
    );
  }

  void register() {
    _onRegisterRepository();
    _onRegisterRemoteService();
    _onRegisterLocalService();
    _onRegisterCubit();
  }
}
