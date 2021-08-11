import 'package:flutter/material.dart';
import 'package:grocery/models/productitem.dart';
import 'package:grocery/utils/layout.dart';
import 'package:grocery/widgets/price.dart';

class CartDetailsViewCard extends StatelessWidget {
  const CartDetailsViewCard({Key? key,required this.productitem}) : super(key: key);
  final ProductItem productitem;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.white,
        backgroundImage: AssetImage(productitem.product!.image!),
      ),
      title: Text(
        productitem.product!.title!,
        style: Theme.of(context).textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold),
      ),
      trailing: FittedBox(
        child: Row(  
          children: [
             Price(amount: "20"),
            Text(
              "  x ${productitem.quantity}",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
