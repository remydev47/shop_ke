import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/product_screen.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder:(context) => ProductScreen(product: product),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              color: kcontentColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Image.asset(product.image, width: 120, height: 120),
                Text(product.title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("\$${product.price}",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    Row(
                      children: List.generate(
                        product.colors.length,
                        (cindex) => Container(
                          height: 15,
                          width: 15,
                          margin: EdgeInsets.only(right: 2),
                          decoration: BoxDecoration(
                            color: product.colors[cindex],
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          //Favourites Icon
          Positioned.fill(
            child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: kprimaryColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(10))),
                  child: Icon(
                    Ionicons.heart_outline,
                    size: 20,
                    color: Colors.white,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
