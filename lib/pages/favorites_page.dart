import 'package:flutter/material.dart';
import 'package:food_app/models/food_item_model.dart';
import 'package:food_app/widgets/favorite_item.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    food = food.where((element) => element.isFavorite == true).toList();
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: food.length,
        itemBuilder: (context, index) => FavoriteItem(
          food: food[index],
        ),
      ),
    );
  }
}
