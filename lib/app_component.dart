import 'package:angular/angular.dart';

import 'src/card/card_component.dart';
import 'src/project_card/project_card.dart';
import 'src/projects/projects.dart';

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
  ],
)
class AppComponent {
  // Nothing here yet. All logic is in TodoListComponent.
}
