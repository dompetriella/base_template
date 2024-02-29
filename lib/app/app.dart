import 'package:base_template/app/pages/sample_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      theme: ThemeData(),
      home: SafeArea(child: SamplePage()),
    );
  }
}
