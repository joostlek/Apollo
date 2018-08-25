import 'package:angular_router/angular_router.dart';

const idParam = 'id';

class RoutePaths {
  static final projects = RoutePath(path: '');
  static final project = RoutePath(path: 'project/:$idParam');
}