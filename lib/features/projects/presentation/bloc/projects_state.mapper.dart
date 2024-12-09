// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'projects_state.dart';

class ProjectsStateMapper extends ClassMapperBase<ProjectsState> {
  ProjectsStateMapper._();

  static ProjectsStateMapper? _instance;
  static ProjectsStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProjectsStateMapper._());
      EntityProjectMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ProjectsState';

  static List<EntityProject> _$projects(ProjectsState v) => v.projects;
  static const Field<ProjectsState, List<EntityProject>> _f$projects =
      Field('projects', _$projects, opt: true, def: const []);

  @override
  final MappableFields<ProjectsState> fields = const {
    #projects: _f$projects,
  };

  static ProjectsState _instantiate(DecodingData data) {
    return ProjectsState(projects: data.dec(_f$projects));
  }

  @override
  final Function instantiate = _instantiate;

  static ProjectsState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ProjectsState>(map);
  }

  static ProjectsState fromJson(String json) {
    return ensureInitialized().decodeJson<ProjectsState>(json);
  }
}

mixin ProjectsStateMappable {
  String toJson() {
    return ProjectsStateMapper.ensureInitialized()
        .encodeJson<ProjectsState>(this as ProjectsState);
  }

  Map<String, dynamic> toMap() {
    return ProjectsStateMapper.ensureInitialized()
        .encodeMap<ProjectsState>(this as ProjectsState);
  }

  ProjectsStateCopyWith<ProjectsState, ProjectsState, ProjectsState>
      get copyWith => _ProjectsStateCopyWithImpl(
          this as ProjectsState, $identity, $identity);
  @override
  String toString() {
    return ProjectsStateMapper.ensureInitialized()
        .stringifyValue(this as ProjectsState);
  }

  @override
  bool operator ==(Object other) {
    return ProjectsStateMapper.ensureInitialized()
        .equalsValue(this as ProjectsState, other);
  }

  @override
  int get hashCode {
    return ProjectsStateMapper.ensureInitialized()
        .hashValue(this as ProjectsState);
  }
}

extension ProjectsStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ProjectsState, $Out> {
  ProjectsStateCopyWith<$R, ProjectsState, $Out> get $asProjectsState =>
      $base.as((v, t, t2) => _ProjectsStateCopyWithImpl(v, t, t2));
}

abstract class ProjectsStateCopyWith<$R, $In extends ProjectsState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, EntityProject,
      EntityProjectCopyWith<$R, EntityProject, EntityProject>> get projects;
  $R call({List<EntityProject>? projects});
  ProjectsStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ProjectsStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ProjectsState, $Out>
    implements ProjectsStateCopyWith<$R, ProjectsState, $Out> {
  _ProjectsStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ProjectsState> $mapper =
      ProjectsStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, EntityProject,
          EntityProjectCopyWith<$R, EntityProject, EntityProject>>
      get projects => ListCopyWith($value.projects,
          (v, t) => v.copyWith.$chain(t), (v) => call(projects: v));
  @override
  $R call({List<EntityProject>? projects}) =>
      $apply(FieldCopyWithData({if (projects != null) #projects: projects}));
  @override
  ProjectsState $make(CopyWithData data) =>
      ProjectsState(projects: data.get(#projects, or: $value.projects));

  @override
  ProjectsStateCopyWith<$R2, ProjectsState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ProjectsStateCopyWithImpl($value, $cast, t);
}
