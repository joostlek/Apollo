import 'package:json_annotation/json_annotation.dart';

part 'short_project.g.dart';

@JsonSerializable()
class ShortProject {
  final int projectId;
  final String name;
  final String shortDescription;
  final String imageUrl;

  ShortProject(this.projectId, this.name, this.shortDescription, this.imageUrl);

  factory ShortProject.fromJson(Map<String, dynamic> json) =>
      _$ShortProjectFromJson(json);

}
