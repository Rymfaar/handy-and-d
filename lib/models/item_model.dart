import '../core/constants/item_category.dart';

class ItemModel {
  ItemModel({
    required this.name,
    required this.isEquipped,
    required this.itemCategory,
    this.number = 1,
    this.isMagic = false,
    this.price,
    this.weight,
    this.description,
  });

  factory ItemModel.fromFirebase(Map<String, dynamic> json) {
    return ItemModel(
      name: json['name'] as String,
      isEquipped: json['is_equipped'] as bool,
      isMagic: json['is_magic'] as bool,
      itemCategory: ItemCategory.values[json['item_category'] as int],
      price: json['price'] as int,
      weight: json['weight'] as int,
      description: json['description'] as String,
        number: json['#'] as int
    );
  }

  final String name;
  final bool isEquipped;
  final bool isMagic;
  final ItemCategory itemCategory;
  final int number;
  final int? price;
  final int? weight;
  final String? description;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'is_equiped': isEquipped,
        'is_magic': isMagic,
        'item_category': itemCategory.index,
        'price': price,
        'weight': weight,
        'description': description,
        '#': number
      };
}
