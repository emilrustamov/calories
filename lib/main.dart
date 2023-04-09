import 'package:callories/hello.dart';
import 'package:callories/test.dart';
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
      statusBarColor: superlightGreen,
    ));
    return const MaterialApp(
      home: View(),
    );
  }
}
