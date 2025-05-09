import 'package:flutter/material.dart';
import 'package:food_app/models/food_item_model.dart';

class FavoriteItem extends StatelessWidget {
  const FavoriteItem(
      {super.key, required this.foodIndex, required this.favFood});
  final int foodIndex;
  final List<FoodItemModel> favFood;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Image.network(
              food[foodIndex].imgUrl,
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
                  food[foodIndex].name,
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w600),
                ),
                Text(
                  '${food[foodIndex].price}\$',
                  style: const TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const Spacer(),
            StatefulBuilder(builder: (context, setstat) {
              return IconButton(
                onPressed: () {
                  setstat(() {
                    favFood[foodIndex] = favFood[foodIndex].copyWith(
                      isFavorite: false,
                    );
                  });
                },
                icon: Icon(favFood[foodIndex].isFavorite
                    ? Icons.favorite
                    : Icons.favorite_border),
                color: Colors.deepOrange,
              );
            }),
          ],
        ),
      ),
    );
  }
}
