import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:handy_and_d/viewmodels/character_list_viewmodel.dart';
import 'package:handy_and_d/widgets/character_card.dart';

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
      body: ListView.builder(
        itemBuilder: (context, index) {
          return CharacterCard(
            characterViewModel: listenViewModel.characters[index],
          );
        },
        itemCount: listenViewModel.characters.length,
      ),
      backgroundColor: Colors.white,
    );
  }
}
