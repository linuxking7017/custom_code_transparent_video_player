import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'your_plugin_name_platform_interface.dart';

/// An implementation of [YourPluginNamePlatform] that uses method channels.
class MethodChannelYourPluginName extends YourPluginNamePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('your_plugin_name');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
