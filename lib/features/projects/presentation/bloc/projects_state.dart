import 'package:dart_mappable/dart_mappable.dart';
import 'package:id_maker_flutter/features/projects/domain/entities/entity_project.dart';

part 'projects_state.mapper.dart';

@MappableClass()
class ProjectsState with ProjectsStateMappable {
  const ProjectsState({
   this.projects = const [],
  });

  final List<EntityProject> projects;
}
