import 'package:flutter/material.dart';
import 'package:food_app/models/food_item_model.dart';

class FavoriteItem extends StatelessWidget {
  const FavoriteItem({super.key, required this.food});
  final FoodItemModel food;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Image.network(
              food.imgUrl,
              height: 70,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  food.name,
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w600),
                ),
                Text(
                  '${food.price}\$',
                  style: const TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              Icons.favorite,
              color: Colors.deepOrange,
            ),
          ],
        ),
      ),
    );
  }
}
