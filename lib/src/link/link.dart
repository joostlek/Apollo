import 'package:json_annotation/json_annotation.dart';

part 'link.g.dart';

@JsonSerializable()
class Link {
  final String url;
  final String title;
  final String subtitle;
  final String leadingIcon;

  Link(this.url, this.title, this.subtitle, this.leadingIcon);

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}
