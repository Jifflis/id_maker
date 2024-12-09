import 'package:id_maker_flutter/features/projects/domain/entities/entity_project.dart';


class ModelProject extends EntityProject {
  ModelProject({
    super.id,
    required super.title,
    required super.width,
    required super.height,
  });

  factory ModelProject.fromJson(String json) =>
      ModelProject.fromEntity(EntityProject.fromJson(json));

  factory ModelProject.fromEntity(EntityProject project) => ModelProject(
        id: project.id,
        title: project.title,
        width: project.width,
        height: project.height,
      );
}
