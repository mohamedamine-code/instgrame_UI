import 'package:flutter/material.dart';
import 'package:instagrame_ui/pages/homepage.dart';

void main() {
  runApp(App());
}
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: homepage(),
    );
  }
}