import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'my_overlay_window_platform_interface.dart';

/// An implementation of [MyOverlayWindowPlatform] that uses method channels.
class MethodChannelMyOverlayWindow extends MyOverlayWindowPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('my_overlay_window');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
