import 'package:flutter/material.dart';

class SampleDetailScreen extends StatelessWidget {
  //final String title;
  const SampleDetailScreen({Key? key}) : super(key: key);

  static const String routeName = '/sample_detail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample detail'),
      ),
      body: const Center(
        child: Text('more information'),
      ),
    );
  }
}
