import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'my_overlay_window_method_channel.dart';

abstract class MyOverlayWindowPlatform extends PlatformInterface {
  /// Constructs a MyOverlayWindowPlatform.
  MyOverlayWindowPlatform() : super(token: _token);

  static final Object _token = Object();

  static MyOverlayWindowPlatform _instance = MethodChannelMyOverlayWindow();

  /// The default instance of [MyOverlayWindowPlatform] to use.
  ///
  /// Defaults to [MethodChannelMyOverlayWindow].
  static MyOverlayWindowPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MyOverlayWindowPlatform] when
  /// they register themselves.
  static set instance(MyOverlayWindowPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
