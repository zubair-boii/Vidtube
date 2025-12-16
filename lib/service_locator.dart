//service locator

import 'package:flutter_vidtube/core/constants/app_constants.dart';
import 'package:flutter_vidtube/core/services/network_info.dart';
import 'package:flutter_vidtube/features/home/data/datasources/remote/home_remote_datasource.dart';
import 'package:flutter_vidtube/features/home/data/repository_impl/home_repository_impl.dart';
import 'package:flutter_vidtube/features/home/domain/repository/home_repository.dart';
import 'package:flutter_vidtube/features/home/domain/usecases/get_video_by_url.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

final sl = GetIt.instance;

Future<void> setupLocator() async {
  // Blocs

  // Repositories
  sl.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImpl(remoteDatasource: sl()),
  );

  // Usecases
  sl.registerLazySingleton(() => GetVideoByUrlUseCase(sl()));

  // Datasources
  sl.registerLazySingleton<HomeRemoteDatasource>(
    () => HomeRemoteDatasourceImpl(),
  );

  // // Services

  // // Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
  sl.registerLazySingleton<Constants>(() => Constants());
  sl.registerLazySingleton<InternetConnectionChecker>(
    () => InternetConnectionChecker.createInstance(),
  );
}
