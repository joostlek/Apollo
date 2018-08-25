import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/material_button/material_button.dart';
import 'package:angular_components/material_icon/material_icon.dart';
import 'package:apollo/src/link/link.dart';

@Component(
  selector: 'link-url',
  directives: [
    MaterialButtonComponent,
    MaterialIconComponent,
    NgClass,
  ],
  templateUrl: 'link_component.html',
  styleUrls: ['link_component.scss.css'],
  providers: const <dynamic>[materialProviders],
)
class LinkComponent {
  @Input()
  Link link;
}
