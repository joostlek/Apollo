import 'dart:async';

import 'package:apollo/src/link/link.dart';
import 'package:apollo/src/project.dart';
import 'package:apollo/src/short_project.dart';

List<Project> projects = <Project>[
  Project(
      1,
      'Couppo',
      'Coupon verification tool',
      'Couppo, the app to create coupons and verify them.'
      'Manage your coupons with this app. Create a coupon, print it, verify it. See statistics of your coupons.'
      'It is free now, I might make it commercial later on.',
      'eros_siteheader.png',
      <Link>[
        Link('https://github.com/joostlek/Eros', 'GitHub', 'joostlek/Eros',
            'fa-github'),
        Link('https://play.google.com/store/apps/details?id=nl.jtosti.eros',
            'Google Play Store', 'Couppo', 'fa-android'),
      ]),
  Project(2, 'Apollo', 'Personal site',
      'My portfolio site, built in AngularDart', 'Untitled.png', <Link>[
    Link('https://www.jtosti.nl', 'Site', 'www.jtosti.nl', 'fa-globe'),
  ]),
  Project(3, 'Hermes', 'Arrowcasting platform', 'Manage advertisements, create promotions and earn money by advertising in your own location', 'hermes.png', <Link>[
    Link('https://github.com/joostlek/Hermes', 'GitHub', 'joostlek/Hermes',
        'fa-github'),
    Link('https://hermesipass.herokuapp.com', 'Site', 'Heroku', 'fa-globe'),
  ])
];

class ProjectService {
  Future<List<ShortProject>> getAllShort() async =>
      projects.map((Project project) => project.toShortProject()).toList();

  Future<Project> getProject(int id) async {
    for (int i = 0; i < projects.length; i++) {
      if (projects[i].projectId == id) {
        return projects[i];
      }
    }
    return null;
  }
}
