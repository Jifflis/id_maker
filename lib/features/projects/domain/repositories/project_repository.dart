import 'package:id_maker_flutter/features/projects/domain/entities/entity_project.dart';

abstract class ProjectRepository{
  Future<Iterable<EntityProject>> getProjects();

  Future<void> saveProject(EntityProject project);
}