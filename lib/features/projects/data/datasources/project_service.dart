import 'package:id_maker_flutter/core/data/database.dart';
import 'package:id_maker_flutter/features/projects/data/models/model_project.dart';
import 'package:id_maker_flutter/features/projects/domain/entities/entity_project.dart';

import '../../../../core/di/dependency_injector.dart';

class ProjectService {
  AppDatabase database = locator<AppDatabase>();

  Future<List<ModelProject>> getProjects() async {
    List<ProjectTableData> allItems =
        await database.select(database.projectTable).get();

    return allItems
        .map((e) => ModelProject.fromJson(e.toJsonString()))
        .toList();
  }

  Future<void> save(EntityProject project) =>
      database.into(database.projectTable).insert(ProjectTableCompanion.insert(
            title: project.title,
            width: project.width.toInt(),
            height: project.height.toInt(),
          ));
}
