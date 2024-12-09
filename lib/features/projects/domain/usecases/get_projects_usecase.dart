import 'package:id_maker_flutter/core/utils/data_state.dart';
import 'package:id_maker_flutter/features/projects/domain/repositories/project_repository.dart';

import '../../../../core/utils/usecase.dart';

class GetProjectUseCase implements UseCase<DataState, void> {
  final ProjectRepository _projectRepository;

  GetProjectUseCase(this._projectRepository);

  @override
  Future<DataState> call({void params}) async{
    return DataSuccess(await _projectRepository.getProjects());
  }
}
