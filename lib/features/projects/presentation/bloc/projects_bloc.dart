import 'package:bloc/bloc.dart';
import 'package:id_maker_flutter/features/projects/domain/entities/entity_project.dart';
import 'package:id_maker_flutter/features/projects/domain/usecases/get_projects_usecase.dart';
import 'package:id_maker_flutter/features/projects/domain/usecases/save_project_usecase.dart';
import 'projects_state.dart';

class ProjectsBloc extends Cubit<ProjectsState> {
  ProjectsBloc(
    this._saveProjectUseCase,
    this._getProjectUseCase,
  ) : super(const ProjectsState()) {
    getProjects();
  }

  final SaveProjectUseCase _saveProjectUseCase;
  final GetProjectUseCase _getProjectUseCase;

  Future<void> getProjects() async {
    print("ok");
    var result = await _getProjectUseCase.call();
    print('result bro ${result.data}');
    emit(state.copyWith(projects: result.data));
  }

  Future<void> saveProject(EntityProject project) async {
    await _saveProjectUseCase.call(params: project);

    getProjects();
  }
}
