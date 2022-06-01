import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:route_navigator/route_navigator_method_channel.dart';

void main() {
  MethodChannelRouteNavigator platform = MethodChannelRouteNavigator();
  const MethodChannel channel = MethodChannel('route_navigator');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
