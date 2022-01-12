import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:handy_and_d/viewmodels/character_list_viewmodel.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    Provider.of<CharacterListViewModel>(context, listen: false)
        .getCharacterHeaders();
  }

  @override
  Widget build(BuildContext context) {
    var listenViewModel = Provider.of<CharacterListViewModel>(context);

    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text(listenViewModel.characters.length.toString())),
      backgroundColor: Colors.white,
    );
  }
}
