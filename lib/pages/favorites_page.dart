import 'package:flutter/material.dart';
import 'package:food_app/models/food_item_model.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    List<FoodItemModel> favFood =
        food.where((element) => element.isFavorite == true).toList();
    if (favFood.isEmpty) {
      return Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/empty_state.png',
              fit: BoxFit.cover,
              height: 350,
            ),
            const Text(
              'No Favorite Items Found!',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
          ],
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: favFood.length,
        itemBuilder: (context, index) => Card(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Image.network(
                  food[index].imgUrl,
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
                      food[index].name,
                      style: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '${food[index].price}\$',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    setState(() {
                      final targetedItem = favFood[index];
                      int targetedIndex = food.indexOf(targetedItem);

                      food[targetedIndex] =
                          food[targetedIndex].copyWith(isFavorite: false);
                      favFood.remove(targetedItem);
                    });
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
