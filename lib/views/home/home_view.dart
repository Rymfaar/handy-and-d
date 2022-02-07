import 'package:flutter/material.dart';

import '../../core/constants/color_style.dart';
import '../../core/constants/margin.dart' as margin;
import '../../models/character_model.dart';
import '../../viewmodels/character_viewmodel.dart';
import '../../widgets/character_card.dart';
import '../../widgets/glass_app_bar.dart';
import 'home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView(this.context, {required this.controller, Key? key}) : super(key: key);

  final HomeController controller;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const GlassAppBar(
        text: 'Handy&D',
        textColor: Color(Brand.PRIMARY),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: margin.MARGIN_M),
        child: FutureBuilder<List<CharacterModel>>(
          future: controller.fetchCharacters(),
          builder: (BuildContext context, AsyncSnapshot<List<CharacterModel>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              // TODO(rymfire): Loading widget -> Create a custom widget
              return Container();
            } else if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
              return ListView.separated(
                itemBuilder: (_, int index) {
                  final CharacterViewModel character =
                      CharacterViewModel(character: snapshot.data![index]);
                  return GestureDetector(
                    onTap: () {
                      controller.showCharacterView(character);
                    },
                    child: CharacterCard(
                      characterViewModel: character,
                    ),
                  );
                },
                itemCount: snapshot.data!.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(height: margin.MARGIN_M);
                },
              );
            } else if (snapshot.hasError && snapshot.connectionState == ConnectionState.done) {
              // TODO(rymfire): Show error widget
              return Container();
            } else {
              // ?
              return Container();
            }
          },
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null, // TODO(rymfire): create new character
        backgroundColor: Color(Brand.PRIMARY),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
