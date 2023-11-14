import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/widgets/product_widget/app_bar.dart';
import 'package:shop_app/widgets/product_widget/image_slider.dart';

class ProductScreen extends StatefulWidget {
  final Product product;
  const ProductScreen({super.key, required this.product});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int currentImage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductAppBar(),
            ImageSlider(onChange: (index){setState(() {
              currentImage=index;
            });}, currentImage: currentImage, image: widget.product.image),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: 
                List.generate(
                  5, 
                  (index) => AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: currentImage == index ? 15 : 8,
                    height: 8,
                    margin: EdgeInsets.only(right: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black
                      ),
                      color: currentImage == index 
                          ? Colors.black
                          : Colors.transparent,
                    ),
                  ),
                 ),              
            ),
            SizedBox(
              height:20,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20), 
                  topLeft: Radius.circular(20),
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}

