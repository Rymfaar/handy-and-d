import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:handy_and_d/viewmodels/character_list_viewmodel.dart';
import 'package:handy_and_d/views/home_view.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Handy&D',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => CharacterListViewModel(),
          ),
        ],
        child: const HomeView(),
      ),
    );
  }
}
