import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'route_navigator_method_channel.dart';

abstract class RouteNavigatorPlatform extends PlatformInterface {
  /// Constructs a RouteNavigatorPlatform.
  RouteNavigatorPlatform() : super(token: _token);

  static final Object _token = Object();

  static RouteNavigatorPlatform _instance = MethodChannelRouteNavigator();

  /// The default instance of [RouteNavigatorPlatform] to use.
  ///
  /// Defaults to [MethodChannelRouteNavigator].
  static RouteNavigatorPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [RouteNavigatorPlatform] when
  /// they register themselves.
  static set instance(RouteNavigatorPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
