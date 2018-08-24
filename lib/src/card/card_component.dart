import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/material_button/material_button.dart';
import 'package:angular_components/material_icon/material_icon.dart';
import 'package:angular_components/material_expansionpanel/material_expansionpanel_set.dart';
import 'package:angular_components/material_expansionpanel/material_expansionpanel.dart';

@Component(
  selector: 'card',
  directives: [
    MaterialButtonComponent,
    MaterialIconComponent,
    MaterialExpansionPanelSet,
    MaterialExpansionPanel,
  ],
  templateUrl: 'card_component.html',
  styleUrls: [
    // This is a wrapper around mdc-card styling to allow it to be imported
    // in dart.
    'package:angular_components/css/mdc_web/card/mdc-card.scss.css',
    'card_component.scss.css'
  ],
  providers: const <dynamic>[materialProviders],
)
class CardComponent {}