import 'package:demo_widget_app/sample/sample_detail_screen.dart';
import 'package:demo_widget_app/setting/setting_screen.dart';
import 'package:flutter/material.dart';

class ListSampleScreen extends StatelessWidget {
  const ListSampleScreen({Key? key}) : super(key: key);

  static const String routeName = '/list_sample';

  final String item = 'Sampleitem';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Items'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.restorablePushNamed(
                context,
                SettingScreen.routeName,
              );
            },
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return TextButton(
            onPressed: () {
              Navigator.restorablePushNamed(
                context,
                SampleDetailScreen.routeName,
              );
            },
            child: Row(
              children: [
                const Icon(
                  Icons.flag_sharp,
                  size: 45,
                ),
                Text(
                  item + ' $index',
                  style: const TextStyle(
                    fontSize: 18,
                    //color: Colors.black,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
