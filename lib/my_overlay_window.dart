
import 'my_overlay_window_platform_interface.dart';

class MyOverlayWindow {
  Future<String?> getPlatformVersion() {
    return MyOverlayWindowPlatform.instance.getPlatformVersion();
  }
}
