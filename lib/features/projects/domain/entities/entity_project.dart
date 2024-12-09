import 'package:dart_mappable/dart_mappable.dart';

part 'entity_project.mapper.dart';

@MappableClass()
class EntityProject with EntityProjectMappable {
  const EntityProject({
    this.id,
    required this.title,
    required this.width,
    required this.height,
  });

  final int? id;
  final String title;
  final double width;
  final double height;

  static const fromMap = EntityProjectMapper.fromMap;
  static const fromJson = EntityProjectMapper.fromJson;
}
