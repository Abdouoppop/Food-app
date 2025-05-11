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
        child: LayoutBuilder(builder: (context, constraints) {
          return Column(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        food[foodIndex].imgUrl,
                        height: constraints.maxHeight * 0.5,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
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
                          size: constraints.maxHeight * 0.17,
                        ),
                      ),
                    );
                  }),
                ],
              ),
              SizedBox(
                height: constraints.maxHeight * 0.05,
              ),
              Text(
                food[foodIndex].name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                '${food[foodIndex].price}\$',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ],
          );
        }),
      ),
    );
  }
}
