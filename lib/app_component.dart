import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'src/card/card_component.dart';
import 'src/project_card/project_card.dart';
import 'src/projects/projects.dart';
import 'src/routes.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.scss.css'],
  templateUrl: 'app_component.html',
  directives: [
    CardComponent,
    ProjectCardComponent,
    ProjectsComponent,
    routerDirectives,
  ],
  exports: [
    RoutePaths,
    Routes,
  ]
)
class AppComponent {
  // Nothing here yet. All logic is in TodoListComponent.
}
