import 'package:flutter/material.dart';

import '../core/constants/item_category.dart';
import '../core/constants/margin.dart' as margin;
import '../core/constants/text_style.dart';
import 'custom_text.dart';
import 'item_number_indicator.dart';

class Item extends StatelessWidget {
  const Item({
    required this.title,
    required this.itemCategory,
    this.price,
    this.weight,
    this.description,
    Key? key,
  }) : super(key: key);

  final String title;
  final ItemCategory itemCategory;
  // TODO(rymfire): item price using a currency enum -> tuple ?
  final int? price;
  final int? weight;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const ItemNumberIndicator(),
        const SizedBox(width: margin.MARGIN_S),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomText(title, defaultStyle: TEXT_BOLD),
            // TODO(rymfire): Row with flexible category price and weight
            Row(
              children: <Widget>[
                // Item category caption
                if (itemCategory != ItemCategory.UNDEFINED)
                  const CustomText('WEAPON', defaultStyle: CAPTION)
                else
                  Container(),
                // Divider
                if (itemCategory != ItemCategory.UNDEFINED && price != null)
                  const CustomText(' • ', defaultStyle: CAPTION),
                // Price caption
                if (price != null)
                  CustomText('$price GOLD', defaultStyle: CAPTION)
                else
                  Container(),
                // Divider
                if (price != null && weight != null)
                  const CustomText(' • ', defaultStyle: CAPTION),
                // Weight caption
                if (weight != null)
                  CustomText('$weight LBS', defaultStyle: CAPTION)
                else
                  Container(),
              ],
            ),
            const SizedBox(height: margin.MARGIN_XS),
            if (description != null)
              CustomText(description!, defaultStyle: TEXT),
          ],
        ),
      ],
    );
  }
}
