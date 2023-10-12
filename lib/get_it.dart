import 'package:a2svclean/domain/usecases/post.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void initDependencies() {
  sl.registerLazySingleton<CreatePostUseCase>(() => CreatePostUseCaseImpl());

}
