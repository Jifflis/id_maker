import 'package:id_maker_flutter/features/projects/domain/entities/entity_project.dart';
import 'package:id_maker_flutter/features/projects/domain/repositories/project_repository.dart';

import '../../../../core/utils/usecase.dart';

class SaveProjectUseCase implements UseCase<void, EntityProject> {
  final ProjectRepository _projectRepository;

  SaveProjectUseCase(this._projectRepository);

  @override
  Future<void> call({EntityProject? params}) =>
      _projectRepository.saveProject(params!);
}
