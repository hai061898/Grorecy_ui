import 'package:get/get.dart';
import 'package:grocery/models/productitem.dart';
import 'package:grocery/models/products.dart';

enum HomeState { normal, cart }

class HomeController extends GetxController {
  List<ProductItem> cart = [];
  HomeState homestate = HomeState.normal;

  changeHomeState(HomeState state) {
    homestate = state;
  }

  addProduct(Product product) {
    for (ProductItem item in cart) {
      if (item.product!.title == product.title) {
        item.increment();
        return;
      }
    }
    cart.add(ProductItem(product: product));
  }

  int totalItem() => cart.fold(
      0, (previousValue, element) => previousValue + element.quantity);
}
