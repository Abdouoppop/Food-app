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
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    final size = MediaQuery.of(context).size;
    List<FoodItemModel> favFood =
        food.where((element) => element.isFavorite == true).toList();
    if (favFood.isEmpty) {
      return Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/empty_state.png',
              fit: BoxFit.cover,
              height: isLandscape ? size.height * 0.5 : size.height * 0.3,
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
                  height: isLandscape ? size.height * 0.2 : size.height * 0.09,
                  width: size.width * 0.2,
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
                    size: isLandscape ? size.height * 0.1 : size.height * 0.035,
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
