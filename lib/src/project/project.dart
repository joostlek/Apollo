import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/material_button/material_button.dart';
import 'package:angular_components/material_icon/material_icon.dart';
import 'package:angular_router/angular_router.dart';
import 'package:apollo/src/project.dart';
import 'package:apollo/src/link/link.dart';
import 'package:apollo/src/link/link_component.dart';
import 'package:apollo/src/project_service.dart';

@Component(
  selector: 'project',
  directives: [
    MaterialButtonComponent,
    MaterialIconComponent,
    LinkComponent,
    NgStyle,
    NgIf,
    NgFor,
  ],
  templateUrl: 'project.html',
  styleUrls: [
    'package:angular_components/css/mdc_web/card/mdc-card.scss.css',
    'project.scss.css'
  ],
  providers: const <dynamic>[materialProviders, ClassProvider(ProjectService)],
)
class ProjectComponent implements OnActivate {
  final ProjectService _projectService;
  final Location _location;
  Project project;
  List<Link> links = <Link>[
  Link('https://www.linkedin.com/in/joostlekkerkerker/', 'GitHub',
  'joostlek/Hermes', 'fa-github'),
  Link('https://www.linkedin.com/in/joostlekkerkerker/', 'Play Store',
  'Couppo', 'fa-android'),
  ];

  ProjectComponent(this._projectService, this._location);

  @override
  void onActivate(RouterState previous, RouterState current) async {
    final id = getId(current.parameters);
    if (id != null)
      project = await _projectService.getProject(id);
  }

  int getId(Map<String, String> parameters) {
    final id = parameters['id'];
    return id == null ? null : int.tryParse(id);
  }

  goBack() => _location.back();
}
