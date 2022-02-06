import 'package:flutter/material.dart';
import 'package:handy_and_d/models/character_model.dart';
// import 'package:handy_and_d/services/firestore_service.dart';
// import 'package:provider/provider.dart';
import 'package:handy_and_d/core/constants/margin.dart' as margin;
import 'package:handy_and_d/core/constants/color_style.dart';
import 'package:handy_and_d/viewmodels/character_viewmodel.dart';
import 'package:handy_and_d/views/home/home_controller.dart';
// import 'package:handy_and_d/viewmodels/character_list_viewmodel.dart';
import 'package:handy_and_d/widgets/character_card.dart';
import 'package:handy_and_d/widgets/glass_app_bar.dart';
// import 'package:handy_and_d/views/character_view.dart';

class HomeView extends StatelessWidget {
  final HomeController controller;
  final BuildContext context;

  const HomeView(this.context, {required this.controller, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const GlassAppBar(
        text: "Handy&D",
        textColor: Color(Brand.PRIMARY),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: margin.MARGIN_M),
        child: FutureBuilder<List<CharacterModel>>(
            future: controller.fetchCharacters(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                // TODO Loading widget -> Create a custom widget
                return Container();
              } else if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
                return ListView.separated(
                  itemBuilder: (_, index) {
                    // CharacterViewModel character = listenViewModel.characters[index];
                    CharacterViewModel character =
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
                // TODO Show error widget
                return Container();
              } else {
                //?
                return Container();
              }
            }),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null, // TODO create new character
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Color(Brand.PRIMARY),
      ),
      backgroundColor: Colors.white,
    );
  }
}
