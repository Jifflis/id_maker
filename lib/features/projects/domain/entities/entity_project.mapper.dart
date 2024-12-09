// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'entity_project.dart';

class EntityProjectMapper extends ClassMapperBase<EntityProject> {
  EntityProjectMapper._();

  static EntityProjectMapper? _instance;
  static EntityProjectMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EntityProjectMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'EntityProject';

  static int? _$id(EntityProject v) => v.id;
  static const Field<EntityProject, int> _f$id = Field('id', _$id, opt: true);
  static String _$title(EntityProject v) => v.title;
  static const Field<EntityProject, String> _f$title = Field('title', _$title);
  static double _$width(EntityProject v) => v.width;
  static const Field<EntityProject, double> _f$width = Field('width', _$width);
  static double _$height(EntityProject v) => v.height;
  static const Field<EntityProject, double> _f$height =
      Field('height', _$height);

  @override
  final MappableFields<EntityProject> fields = const {
    #id: _f$id,
    #title: _f$title,
    #width: _f$width,
    #height: _f$height,
  };

  static EntityProject _instantiate(DecodingData data) {
    return EntityProject(
        id: data.dec(_f$id),
        title: data.dec(_f$title),
        width: data.dec(_f$width),
        height: data.dec(_f$height));
  }

  @override
  final Function instantiate = _instantiate;

  static EntityProject fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EntityProject>(map);
  }

  static EntityProject fromJson(String json) {
    return ensureInitialized().decodeJson<EntityProject>(json);
  }
}

mixin EntityProjectMappable {
  String toJson() {
    return EntityProjectMapper.ensureInitialized()
        .encodeJson<EntityProject>(this as EntityProject);
  }

  Map<String, dynamic> toMap() {
    return EntityProjectMapper.ensureInitialized()
        .encodeMap<EntityProject>(this as EntityProject);
  }

  EntityProjectCopyWith<EntityProject, EntityProject, EntityProject>
      get copyWith => _EntityProjectCopyWithImpl(
          this as EntityProject, $identity, $identity);
  @override
  String toString() {
    return EntityProjectMapper.ensureInitialized()
        .stringifyValue(this as EntityProject);
  }

  @override
  bool operator ==(Object other) {
    return EntityProjectMapper.ensureInitialized()
        .equalsValue(this as EntityProject, other);
  }

  @override
  int get hashCode {
    return EntityProjectMapper.ensureInitialized()
        .hashValue(this as EntityProject);
  }
}

extension EntityProjectValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EntityProject, $Out> {
  EntityProjectCopyWith<$R, EntityProject, $Out> get $asEntityProject =>
      $base.as((v, t, t2) => _EntityProjectCopyWithImpl(v, t, t2));
}

abstract class EntityProjectCopyWith<$R, $In extends EntityProject, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? id, String? title, double? width, double? height});
  EntityProjectCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _EntityProjectCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EntityProject, $Out>
    implements EntityProjectCopyWith<$R, EntityProject, $Out> {
  _EntityProjectCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EntityProject> $mapper =
      EntityProjectMapper.ensureInitialized();
  @override
  $R call({Object? id = $none, String? title, double? width, double? height}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (title != null) #title: title,
        if (width != null) #width: width,
        if (height != null) #height: height
      }));
  @override
  EntityProject $make(CopyWithData data) => EntityProject(
      id: data.get(#id, or: $value.id),
      title: data.get(#title, or: $value.title),
      width: data.get(#width, or: $value.width),
      height: data.get(#height, or: $value.height));

  @override
  EntityProjectCopyWith<$R2, EntityProject, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _EntityProjectCopyWithImpl($value, $cast, t);
}
