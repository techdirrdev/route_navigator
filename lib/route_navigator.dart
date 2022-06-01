import 'route_navigator_platform_interface.dart';

class RouteNavigator {
  Future<String?> getPlatformVersion() {
    return RouteNavigatorPlatform.instance.getPlatformVersion();
  }
}
