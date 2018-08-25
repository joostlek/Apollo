import 'package:angular_router/angular_router.dart';

import 'route_paths.dart';
import 'projects/projects.template.dart' as projects_template;
import 'project/project.template.dart' as project_template;

export 'route_paths.dart';

class Routes {
  static final projects = RouteDefinition(
    routePath: RoutePaths.projects,
    component: projects_template.ProjectsComponentNgFactory,
  );

  static final project = RouteDefinition(
    routePath: RoutePaths.project,
    component: project_template.ProjectComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    projects,
    project,
  ];
}