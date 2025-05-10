import 'package:flutter/material.dart';
import 'package:food_app/models/food_item_model.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({super.key, required this.foodIndex});
  final int foodIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Stack(
              children: [
                StatefulBuilder(builder: (context, setstat) {
                  return Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {
                        setstat(() {
                          food[foodIndex] = food[foodIndex].copyWith(
                            isFavorite: !food[foodIndex].isFavorite,
                          );
                        });
                      },
                      icon: Icon(
                        food[foodIndex].isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  );
                }),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                food[foodIndex].imgUrl,
                height: 70,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              food[foodIndex].name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Text(
              '${food[foodIndex].price}\$',
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
