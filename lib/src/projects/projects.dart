import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/material_button/material_button.dart';
import 'package:angular_components/material_icon/material_icon.dart';
import 'package:apollo/src/project_service.dart';
import 'package:apollo/src/short_project.dart';
import 'projects_title/projects_title.dart';
import '../project_card/project_card.dart';

@Component(
  selector: 'projects',
  directives: [
    MaterialButtonComponent,
    MaterialIconComponent,
    ProjectCardComponent,
    ProjectsTitleComponent,
    NgFor,
    NgIf,
  ],
  templateUrl: 'projects.html',
  styleUrls: ['projects.scss.css'],
  providers: const <dynamic>[
    materialProviders,
    ClassProvider(ProjectService),
  ],
)
class ProjectsComponent implements OnInit {
  final ProjectService _projectService;

  ProjectsComponent(this._projectService);

  List<ShortProject> projects = [];

  @override
  void ngOnInit() {
    getProjects();
  }

  Future<void> getProjects() async {
    projects = await _projectService.getAllShort();
  }
}
