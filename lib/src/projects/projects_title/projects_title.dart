import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'projects-title',
  directives: [
  ],
  templateUrl: 'projects_title.html',
  styleUrls: [
    'package:angular_components/css/mdc_web/card/mdc-card.scss.css',
    'projects_title.scss.css'
  ],
  providers: const <dynamic>[materialProviders],
)
class ProjectsTitleComponent {}