import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:handy_and_d/core/constants/color_style.dart';
import 'package:handy_and_d/core/constants/text_style.dart';
import 'package:handy_and_d/viewmodels/character_viewmodel.dart';
import 'package:handy_and_d/views/character_skills_tab_view.dart';
import 'package:handy_and_d/views/character_inventory_tab_view.dart';
import 'package:handy_and_d/views/character_actions_tab_view.dart';
import 'package:handy_and_d/views/character_notes_tab_view.dart';
import 'package:handy_and_d/views/character_identity_tab_view.dart';
import 'package:handy_and_d/widgets/glass_app_bar.dart';

class CharacterView extends StatefulWidget {
  final CharacterViewModel characterViewModel;

  const CharacterView({required this.characterViewModel, Key? key})
      : super(key: key);

  @override
  State<CharacterView> createState() => _CharacterViewState();
}

class _CharacterViewState extends State<CharacterView> {
  int index = 0;
  final tabs = [
    const CharacterSkillsTab(),
    const CharacterInventoryTab(),
    const CharacterActionsTab(),
    const CharacterNotesTab(),
    const CharacterIdentityTab(),
  ];
  final tabLabels = [
    "Stats & skills",
    "Inventory",
    "Actions",
    "Notes",
    "Identity",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[index],
      appBar: GlassAppBar(text: tabLabels[index]),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          backgroundColor: const Color(Contrast.WHITE02),
          indicatorColor: const Color(Brand.TERTIARY),
          labelTextStyle: MaterialStateProperty.all(TAB),
        ),
        child: NavigationBar(
          // TODO: Change tab animations
          height: 72,
          selectedIndex: index,
          onDestinationSelected: (index) {
            setState(() {
              this.index = index;
            });
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(
                Iconsax.box_1,
                color: Color(Brand.SECONDARY),
              ),
              label: 'Skills',
            ),
            NavigationDestination(
              icon: Icon(
                Iconsax.shapes,
                color: Color(Brand.SECONDARY),
              ),
              label: 'Inventory',
            ),
            NavigationDestination(
              icon: Icon(
                Iconsax.flash_1,
                color: Color(Brand.SECONDARY),
              ),
              label: 'Actions',
            ),
            NavigationDestination(
              icon: Icon(
                Iconsax.book_1,
                color: Color(Brand.SECONDARY),
              ),
              label: 'Notes',
            ),
            NavigationDestination(
              icon: Icon(
                Iconsax.user_tag,
                color: Color(Brand.SECONDARY),
              ),
              label: 'Identity',
            ),
          ],
        ),
      ),
    );
  }
}
