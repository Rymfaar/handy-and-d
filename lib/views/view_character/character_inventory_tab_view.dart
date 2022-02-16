import 'package:flutter/material.dart';
import '../../core/constants/color_style.dart';
import '../../core/constants/item_category.dart';
import '../../core/constants/margin.dart' as margin;
import '../../core/constants/text_style.dart';
import '../../viewmodels/character_viewmodel.dart';
import '../../widgets/character_data_frame.dart';
import '../../widgets/character_header.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/item.dart';
import '../../widgets/item_number_indicator.dart';
import '../../widgets/section_title.dart';
import 'character_controller.dart';

class CharacterInventoryTab extends StatelessWidget {
  const CharacterInventoryTab({
    required this.characterData,
    required this.controller,
    Key? key,
  }) : super(key: key);

  final CharacterViewModel characterData;
  final CharacterController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: margin.MARGIN_M),
        child: Align(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CharacterHeader(characterData: characterData),
              const SizedBox(height: margin.MARGIN_L),
              const SectionTitle('Currencies'),
              const SizedBox(height: margin.MARGIN_L),
              _currencyFrames(),
              const SizedBox(height: margin.MARGIN_L),
              const SectionTitle('Equiped'),
              const SizedBox(height: margin.MARGIN_L),
              Column(
                children: const <Widget>[
                  // TODO(rymfire): ListView.builder
                  Item(
                    title: 'Silver Battleaxe',
                    itemCategory: ItemCategory.WEAPON,
                  ),
                ],
              ),
              const SizedBox(height: margin.MARGIN_L),
              const SectionTitle('Backpack'),
              const SizedBox(height: margin.MARGIN_L),
            ],
          ),
        ),
      ),
    );
  }

  Column _currencyFrames() {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <CharacterDataFrame>[
            CharacterDataFrame(label: 'Copper', value: '1'),
            CharacterDataFrame(label: 'Silver', value: '1'),
            CharacterDataFrame(label: 'Gold', value: '36'),
          ],
        ),
        const SizedBox(height: margin.MARGIN_S),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <CharacterDataFrame>[
            CharacterDataFrame(label: 'Electrum', value: '0'),
            CharacterDataFrame(label: 'Platinium', value: '0'),
          ],
        ),
      ],
    );
  }
}


