// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Project _$ProjectFromJson(Map<String, dynamic> json) {
  return Project(
      json['projectId'] as int,
      json['name'] as String,
      json['shortDescription'] as String,
      json['description'] as String,
      json['imageUrl'] as String,
      (json['links'] as List)
          ?.map((e) =>
              e == null ? null : Link.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$ProjectToJson(Project instance) => <String, dynamic>{
      'projectId': instance.projectId,
      'name': instance.name,
      'shortDescription': instance.shortDescription,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'links': instance.links
    };
