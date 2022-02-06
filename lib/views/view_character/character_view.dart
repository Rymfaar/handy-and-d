import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:handy_and_d/core/constants/color_style.dart';
import 'package:handy_and_d/core/constants/text_style.dart';
import 'package:handy_and_d/viewmodels/character_viewmodel.dart';
import 'package:handy_and_d/views/view_character/character_skills_tab_view.dart';
import 'package:handy_and_d/views/view_character/character_inventory_tab_view.dart';
import 'package:handy_and_d/views/view_character/character_actions_tab_view.dart';
import 'package:handy_and_d/views/view_character/character_notes_tab_view.dart';
import 'package:handy_and_d/views/view_character/character_identity_tab_view.dart';
import 'package:handy_and_d/widgets/glass_app_bar.dart';

class CharacterView extends StatefulWidget {
  final CharacterViewModel characterViewModel;

  const CharacterView({required this.characterViewModel, Key? key}) : super(key: key);

  @override
  State<CharacterView> createState() => _CharacterViewState();
}

class _CharacterViewState extends State<CharacterView> {
  int tabIndex = 0;
  final List<String> tabLabels = [
    'Stats & skills',
    'Inventory',
    'Actions',
    'Notes',
    'Identity',
  ];

  List<StatelessWidget> get tabs => [
        CharacterSkillsTab(
          characterData: widget.characterViewModel,
        ),
        const CharacterInventoryTab(),
        const CharacterActionsTab(),
        const CharacterNotesTab(),
        const CharacterIdentityTab(),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[tabIndex],
      appBar: GlassAppBar(text: tabLabels[tabIndex]),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          backgroundColor: const Color(Contrast.WHITE02),
          indicatorColor: const Color(Brand.TERTIARY),
          labelTextStyle: MaterialStateProperty.all(TAB),
        ),
        child: NavigationBar(
          // TODO: Change tab animations
          height: 72,
          selectedIndex: tabIndex,
          onDestinationSelected: (int index) {
            setState(() {
              tabIndex = index;
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
