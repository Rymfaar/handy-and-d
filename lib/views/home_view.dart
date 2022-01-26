import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:handy_and_d/core/constants/margin.dart' as margin;
import 'package:handy_and_d/core/constants/text_style.dart';
import 'package:handy_and_d/core/constants/color_style.dart';
import 'package:handy_and_d/viewmodels/character_viewmodel.dart';
import 'package:handy_and_d/viewmodels/character_list_viewmodel.dart';
import 'package:handy_and_d/widgets/character_card.dart';
import 'package:handy_and_d/widgets/custom_text.dart';
import 'package:handy_and_d/widgets/glass_app_bar.dart';
import 'package:handy_and_d/views/character_view.dart';

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

  void _showCharacterView(context, character) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) {
          return CharacterView(
            characterViewModel: character,
          );
        },
      ),
    );
  }

  // void _addNewCharacter(context) {} // TODO: Add character

  @override
  Widget build(BuildContext context) {
    var listenViewModel = Provider.of<CharacterListViewModel>(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const GlassAppBar(
        text: "Handy&D",
        textColor: Color(Brand.PRIMARY),
      ),
      // appBar: PreferredSize(
      //   preferredSize: const Size(double.infinity, 52.0),
      //   child: ClipRect(
      //     child: BackdropFilter(
      //       filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      //       child: AppBar(
      //         title: const CustomText(
      //           text: "Handy&D",
      //           textColor: Color(Brand.PRIMARY),
      //           defaultStyle: HEADER,
      //         ),
      //         elevation: 0.0,
      //         backgroundColor: Colors.white.withOpacity(0.2),
      //       ),
      //     ),
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: margin.MARGIN_M),
        child: ListView.separated(
          // padding:
          //     const EdgeInsets.fromLTRB(0, margin.MARGIN_M, 0, margin.MARGIN_L),
          itemBuilder: (_, index) {
            CharacterViewModel character = listenViewModel.characters[index];
            return GestureDetector(
              onTap: () {
                _showCharacterView(context, character);
              },
              child: CharacterCard(
                characterViewModel: character,
              ),
            );
          },
          itemCount: listenViewModel.characters.length,
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: margin.MARGIN_M);
          },
        ),
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
