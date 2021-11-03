import 'package:demo_widget_app/setting/setting_controller.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  final SettingsController settingsController;
  const SettingScreen({Key? key, required this.settingsController})
      : super(key: key);

  static const String routeName = '/setting';

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  ThemeMode defaultTheme = ThemeMode.system;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: DropdownButton<ThemeMode>(
          value: widget.settingsController.themeMode,
          onChanged: (ThemeMode? newTheme) {
            setState(() {
              defaultTheme = newTheme!;
              widget.settingsController.updateThemeMode(newTheme);
            });
          },
          items: const [
            DropdownMenuItem(
              value: ThemeMode.system,
              child: Text('System Theme'),
            ),
            DropdownMenuItem(
              value: ThemeMode.light,
              child: Text('Light Theme'),
            ),
            DropdownMenuItem(
              value: ThemeMode.dark,
              child: Text('Dark Theme'),
            )
          ],
        ),
      ),
    );
  }
}
