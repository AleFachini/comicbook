import 'package:get_it/get_it.dart';
import 'package:sundevs/data/comic_repository.dart';

final serviceLocator = GetIt.instance;

void setupLocator() {
  // Register your Repository
  serviceLocator
      .registerLazySingleton<ComicRepository>(() => ComicRepository());
}
