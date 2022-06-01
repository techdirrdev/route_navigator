import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'route_navigator_platform_interface.dart';

/// An implementation of [RouteNavigatorPlatform] that uses method channels.
class MethodChannelRouteNavigator extends RouteNavigatorPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('route_navigator');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
