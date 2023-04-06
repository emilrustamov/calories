import 'package:callories/hello.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'global.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  statusBarColor: Colors.amber,
));
    return MaterialApp(
      home: const Hello(),
    );
  }
}
