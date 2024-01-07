import 'package:flutter_test/flutter_test.dart';
import 'package:your_plugin_name/your_plugin_name.dart';
import 'package:your_plugin_name/your_plugin_name_platform_interface.dart';
import 'package:your_plugin_name/your_plugin_name_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockYourPluginNamePlatform
    with MockPlatformInterfaceMixin
    implements YourPluginNamePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final YourPluginNamePlatform initialPlatform = YourPluginNamePlatform.instance;

  test('$MethodChannelYourPluginName is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelYourPluginName>());
  });

  test('getPlatformVersion', () async {
    YourPluginName yourPluginNamePlugin = YourPluginName();
    MockYourPluginNamePlatform fakePlatform = MockYourPluginNamePlatform();
    YourPluginNamePlatform.instance = fakePlatform;

    expect(await yourPluginNamePlugin.getPlatformVersion(), '42');
  });
}
