import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/material_button/material_button.dart';
import 'package:angular_components/material_icon/material_icon.dart';
import 'package:angular_router/angular_router.dart';
import 'package:apollo/src/short_project.dart';

@Component(
  selector: 'project-card',
  directives: [
    MaterialButtonComponent,
    MaterialIconComponent,
    NgStyle,
  ],
  templateUrl: 'project_card.html',
  styleUrls: [
    'package:angular_components/css/mdc_web/card/mdc-card.scss.css',
    'project_card.scss.css'
  ],
  providers: const <dynamic>[materialProviders],
)
class ProjectCardComponent {
  @Input()
  ShortProject project;
  final Router _router;

  ProjectCardComponent(this._router);

  toDetail() {
    _router.navigate('project/' + project.projectId.toString());
  }
}