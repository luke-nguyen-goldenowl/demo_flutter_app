import 'package:demo_widget_app/sample/list_sample_screen.dart';
import 'package:demo_widget_app/sample/sample_detail_screen.dart';
import 'package:demo_widget_app/setting/setting_controller.dart';
import 'package:demo_widget_app/setting/setting_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  // final settingsController = SettingsController();
  // await settingsController.loadSettings();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = SettingsController();
    return AnimatedBuilder(
      animation: controller,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(),
          darkTheme: ThemeData.dark(),
          themeMode: controller.themeMode,
          onGenerateRoute: (RouteSettings routeSettings) {
            return MaterialPageRoute<void>(
              settings: routeSettings,
              builder: (BuildContext context) {
                switch (routeSettings.name) {
                  case SettingScreen.routeName:
                    return SettingScreen(settingsController: controller);
                  case SampleDetailScreen.routeName:
                    return const SampleDetailScreen();
                  case ListSampleScreen.routeName:

                  default:
                    return const ListSampleScreen();
                }
              },
            );
          },
          home: const ListSampleScreen(),
        );
      },
    );
  }
}
