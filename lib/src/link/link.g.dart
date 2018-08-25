// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Link _$LinkFromJson(Map<String, dynamic> json) {
  return Link(json['url'] as String, json['title'] as String,
      json['subtitle'] as String, json['leadingIcon'] as String);
}

Map<String, dynamic> _$LinkToJson(Link instance) => <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'leadingIcon': instance.leadingIcon
    };
