import 'package:examenuno_gpj/home.dart';
import 'package:flutter/material.dart';

import 'login.dart';

void main() {
  runApp(const MyApp());
}
///login desde el rturn 176 lineas
///home 257 lineas
///nueva 64 lineas
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Login(),
    );
  }
}


