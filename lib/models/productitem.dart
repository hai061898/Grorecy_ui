import 'package:grocery/models/products.dart';

class ProductItem {
  int quantity;
  final Product? product;

  ProductItem({this.quantity = 1, required this.product});

  void increment() {

    if (quantity > 1) {
      quantity--;
    } else {
      quantity++;
    }
  }

  // void discrement() {
  //   quantity--;
  // }

  // void add() {}

  // void substract() {}
}
