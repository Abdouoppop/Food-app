import 'package:flutter/material.dart';
import 'package:food_app/models/food_item_model.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({super.key, required this.foodItemModel});
  final FoodItemModel foodItemModel;

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
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                foodItemModel.imgUrl,
                height: 70,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              foodItemModel.name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Text(
              '${foodItemModel.price}\$',
              style: const TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
