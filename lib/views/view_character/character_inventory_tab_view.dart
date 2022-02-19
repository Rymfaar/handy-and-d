import 'package:flutter/material.dart';
import '../../core/constants/item_category.dart';
import '../../core/constants/margin.dart' as margin;
import '../../models/item_model.dart';
import '../../viewmodels/character_viewmodel.dart';
import '../../widgets/character_data_frame.dart';
import '../../widgets/character_header.dart';
import '../../widgets/item.dart';
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
              _equippedItems(),
              const SizedBox(height: margin.MARGIN_L),
              const SectionTitle('Backpack'),
              const SizedBox(height: margin.MARGIN_L),
              _backpackItems(),
              const SizedBox(height: margin.MARGIN_L),
            ],
          ),
        ),
      ),
    );
  }

  ListView _backpackItems() {
    final List<ItemModel> items = characterData.backpackItems;

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (BuildContext context, int idx) {
        return Item(
          title: items[idx].name,
          itemCategory: items[idx].itemCategory,
          price: items[idx].price,
          weight: items[idx].weight,
          description: items[idx].description?.replaceAll(r'\n', '\n'),
          number: items[idx].number,
        );
      },
      separatorBuilder: (BuildContext context, int idx) {
        return const SizedBox(height: margin.MARGIN_L);
      },
    );
  }

  ListView _equippedItems() {
    final List<ItemModel> items = characterData.equippedItems;

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (BuildContext context, int idx) {
        return Item(
          title: items[idx].name,
          itemCategory: items[idx].itemCategory,
          price: items[idx].price,
          weight: items[idx].weight,
          description: items[idx].description?.replaceAll(r'\n', '\n'),
          number: items[idx].number,
        );
      },
      separatorBuilder: (BuildContext context, int idx) {
        return const SizedBox(height: margin.MARGIN_L);
      },
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
