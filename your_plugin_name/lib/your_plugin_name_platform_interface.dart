import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'your_plugin_name_method_channel.dart';

abstract class YourPluginNamePlatform extends PlatformInterface {
  /// Constructs a YourPluginNamePlatform.
  YourPluginNamePlatform() : super(token: _token);

  static final Object _token = Object();

  static YourPluginNamePlatform _instance = MethodChannelYourPluginName();

  /// The default instance of [YourPluginNamePlatform] to use.
  ///
  /// Defaults to [MethodChannelYourPluginName].
  static YourPluginNamePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [YourPluginNamePlatform] when
  /// they register themselves.
  static set instance(YourPluginNamePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
