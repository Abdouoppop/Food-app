class FoodItemModel {
  FoodItemModel(
      {required this.name,
      required this.imgUrl,
      required this.price,
      this.isFavorite = false});
  final String name;
  final String imgUrl;
  final double price;
  final bool isFavorite;
}

List<FoodItemModel> food = [
  FoodItemModel(
    name: 'Beef Burger',
    imgUrl:
        'https://www.freepnglogos.com/uploads/burger-png/download-hamburger-burger-png-image-png-image-pngimg-15.png',
    price: 8.5,
  ),
  FoodItemModel(
    name: 'Chicken Burger',
    imgUrl: 'https://www.pngarts.com/files/3/Chicken-Burger-PNG-Photo.png',
    price: 8.5,
    isFavorite: true,
  ),
  FoodItemModel(
    name: 'Cheese Burger',
    imgUrl:
        'https://www.pngmart.com/files/16/Cheese-Burger-PNG-Transparent-Image.png',
    price: 8,
  ),
  FoodItemModel(
    name: 'Chicken Pizza',
    imgUrl:
        'https://graficsea.com/wp-content/uploads/2021/12/Chicken-Supreme-Pizza-.png',
    price: 9,
    isFavorite: true,
  ),
  FoodItemModel(
    name: 'Pasta',
    imgUrl:
        'https://www.pngall.com/wp-content/uploads/2018/04/Pasta-PNG-Image.png',
    price: 7,
  ),
  FoodItemModel(
    name: 'Beef Burger',
    imgUrl:
        'https://www.freepnglogos.com/uploads/burger-png/download-hamburger-burger-png-image-png-image-pngimg-15.png',
    price: 8.5,
  ),
  FoodItemModel(
    name: 'Chicken Burger',
    imgUrl: 'https://www.pngarts.com/files/3/Chicken-Burger-PNG-Photo.png',
    price: 8.5,
  ),
  FoodItemModel(
    name: 'Cheese Burger',
    imgUrl:
        'https://www.pngmart.com/files/16/Cheese-Burger-PNG-Transparent-Image.png',
    price: 8,
  ),
  FoodItemModel(
    name: 'Chicken Pizza',
    imgUrl:
        'https://graficsea.com/wp-content/uploads/2021/12/Chicken-Supreme-Pizza-.png',
    price: 9,
    isFavorite: true,
  ),
  FoodItemModel(
    name: 'Pasta',
    imgUrl:
        'https://www.pngall.com/wp-content/uploads/2018/04/Pasta-PNG-Image.png',
    price: 7,
  ),
];
