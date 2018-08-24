import 'package:angular/angular.dart';

import 'src/todo_list/todo_list_component.dart';
import 'src/card/card_component.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [TodoListComponent, CardComponent],
)
class AppComponent {
  // Nothing here yet. All logic is in TodoListComponent.
}
