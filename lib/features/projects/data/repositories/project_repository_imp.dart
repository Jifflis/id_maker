import 'package:id_maker_flutter/features/projects/data/datasources/project_service.dart';
import 'package:id_maker_flutter/features/projects/domain/entities/entity_project.dart';
import 'package:id_maker_flutter/features/projects/domain/repositories/project_repository.dart';

class ProjectRepositoriesImp implements ProjectRepository{
  ProjectRepositoriesImp(this._projectService);

  final ProjectService _projectService;

  @override
  Future<Iterable<EntityProject>> getProjects() => _projectService.getProjects();

  @override
  Future<void> saveProject(EntityProject project) => _projectService.save(project);

}