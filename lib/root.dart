import 'package:flutter/material.dart';

import 'views/home/home_controller.dart';

class HandyAndD extends StatelessWidget {
  const HandyAndD({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Handy&D',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
