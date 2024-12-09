
import 'package:get_it/get_it.dart';
import 'package:id_maker_flutter/features/projects/data/datasources/project_service.dart';
import 'package:id_maker_flutter/features/projects/data/repositories/project_repository_imp.dart';
import 'package:id_maker_flutter/features/projects/domain/repositories/project_repository.dart';
import 'package:id_maker_flutter/features/projects/domain/usecases/get_projects_usecase.dart';
import 'package:id_maker_flutter/features/projects/domain/usecases/save_project_usecase.dart';

import '../data/database.dart';

final locator = GetIt.instance;

void init() async {


  locator.registerSingleton<AppDatabase>(AppDatabase());

  //services
  locator.registerLazySingleton(
        () => ProjectService(),
  );


  //repositories
  locator.registerLazySingleton<ProjectRepository>(
        () => ProjectRepositoriesImp(locator()),
  );

  //use cases
  locator.registerLazySingleton<GetProjectUseCase>(
        () => GetProjectUseCase(locator()),
  );

  locator.registerLazySingleton<SaveProjectUseCase>(
        () => SaveProjectUseCase(locator()),
  );

}
