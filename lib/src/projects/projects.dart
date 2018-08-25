import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/material_button/material_button.dart';
import 'package:angular_components/material_icon/material_icon.dart';
import 'package:testtest/src/project.dart';
import 'projects_title/projects_title.dart';
import '../project_card/project_card.dart';

@Component(
  selector: 'projects',
  directives: [
    MaterialButtonComponent,
    MaterialIconComponent,
    ProjectCardComponent,
    ProjectsTitleComponent,
  ],
  templateUrl: 'projects.html',
  styleUrls: [
    'projects.scss.css'
  ],
  providers: const <dynamic>[materialProviders],
)
class ProjectsComponent {
  Project project = Project(1, 'Apollo', 'Personal site', 'Untitled.png');
}