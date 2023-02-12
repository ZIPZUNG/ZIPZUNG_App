import 'package:flutter/material.dart';
import 'package:zipzung_app/screen/home_screen.dart';

Future<void> main() async {
  // await fetchData();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
