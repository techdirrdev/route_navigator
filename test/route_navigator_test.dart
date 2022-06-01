import 'package:flutter_test/flutter_test.dart';
import 'package:route_navigator/route_navigator.dart';
import 'package:route_navigator/route_navigator_platform_interface.dart';
import 'package:route_navigator/route_navigator_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockRouteNavigatorPlatform
    with MockPlatformInterfaceMixin
    implements RouteNavigatorPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final RouteNavigatorPlatform initialPlatform =
      RouteNavigatorPlatform.instance;

  test('$MethodChannelRouteNavigator is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelRouteNavigator>());
  });

  test('getPlatformVersion', () async {
    RouteNavigator routeNavigatorPlugin = RouteNavigator();
    MockRouteNavigatorPlatform fakePlatform = MockRouteNavigatorPlatform();
    RouteNavigatorPlatform.instance = fakePlatform;

    expect(await routeNavigatorPlugin.getPlatformVersion(), '42');
  });
}
