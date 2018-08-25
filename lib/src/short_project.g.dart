// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'short_project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShortProject _$ShortProjectFromJson(Map<String, dynamic> json) {
  return ShortProject(json['projectId'] as int, json['name'] as String,
      json['shortDescription'] as String, json['imageUrl'] as String);
}

Map<String, dynamic> _$ShortProjectToJson(ShortProject instance) =>
    <String, dynamic>{
      'projectId': instance.projectId,
      'name': instance.name,
      'shortDescription': instance.shortDescription,
      'imageUrl': instance.imageUrl
    };
