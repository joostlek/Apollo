import 'package:apollo/src/link/link.dart';
import 'package:apollo/src/short_project.dart';
import 'package:json_annotation/json_annotation.dart';

part 'project.g.dart';

@JsonSerializable()
class Project {
  final int projectId;
  final String name;
  final String shortDescription;
  final String description;
  final String imageUrl;
  final List<Link> links;

  Project(this.projectId, this.name, this.shortDescription, this.description,
      this.imageUrl, this.links);

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);

  ShortProject toShortProject() {
    return ShortProject(
      this.projectId,
      this.name,
      this.shortDescription,
      this.imageUrl,
    );
  }
}
