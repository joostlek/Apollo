import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/material_button/material_button.dart';
import 'package:angular_components/material_icon/material_icon.dart';
import 'package:apollo/src/project.dart';

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
  Project project;
}