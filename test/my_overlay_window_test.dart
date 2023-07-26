import 'package:flutter_test/flutter_test.dart';
import 'package:my_overlay_window/my_overlay_window.dart';
import 'package:my_overlay_window/my_overlay_window_platform_interface.dart';
import 'package:my_overlay_window/my_overlay_window_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMyOverlayWindowPlatform
    with MockPlatformInterfaceMixin
    implements MyOverlayWindowPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MyOverlayWindowPlatform initialPlatform = MyOverlayWindowPlatform.instance;

  test('$MethodChannelMyOverlayWindow is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMyOverlayWindow>());
  });

  test('getPlatformVersion', () async {
    MyOverlayWindow myOverlayWindowPlugin = MyOverlayWindow();
    MockMyOverlayWindowPlatform fakePlatform = MockMyOverlayWindowPlatform();
    MyOverlayWindowPlatform.instance = fakePlatform;

    expect(await myOverlayWindowPlugin.getPlatformVersion(), '42');
  });
}
