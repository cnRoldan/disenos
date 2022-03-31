import 'package:disenos/screens/home_screen.dart';
import 'package:disenos/screens/scroll_design.dart';
import 'package:disenos/screens/basic_design.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      initialRoute: 'home_screen',
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.dark(),
      routes: {
        'basic_design': ((context) => const BasicDesignScreen()),
        'scroll_screen': ((context) => const ScrollScreen()),
        'home_screen': ((context) => const HomeScreen()),
      },
    );
  }
}
