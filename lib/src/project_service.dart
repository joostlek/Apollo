import 'dart:async';

import 'package:apollo/src/link/link.dart';
import 'package:apollo/src/project.dart';
import 'package:apollo/src/short_project.dart';

List<ShortProject> projects = <ShortProject>[
  ShortProject(1, 'Couppo', 'Coupon verification tool', 'eros_siteheader.png'),
  ShortProject(2, 'Apollo', 'Personal site', 'Untitled.png'),
  ShortProject(3, 'Hermes', 'Narrowcasting platform', 'Untitled.png'),
];

class ProjectService {
  Future<List<ShortProject>> getAllShort() async => projects;

  Future<Project> getProject(int id) async {
    for (int i = 0; i < projects.length; i++) {
      if (projects[i].projectId == id) {
        return Project(projects[i].projectId, projects[i].name, projects[i].shortDescription, 'asdasd', projects[i].imageUrl, <Link>[Link('https://www.google.com', 'Google', 'Joostlek', 'fa-google')]);
      }
    }
    return null;
  }
}