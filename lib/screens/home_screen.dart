import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/widgets/ProductCard.dart';
import 'package:shop_app/widgets/categories.dart';
import 'package:shop_app/widgets/hero_widget.dart';
import 'package:shop_app/widgets/home_app_bar.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/widgets/search_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kscaffoldColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeAppBar(),
                SizedBox(height: 20),
                SearchField(),
                SizedBox(height: 20),
                HeroWidget(),
                SizedBox(height: 20,),
                Categories(),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Special For You",
                      style:TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                    TextButton(onPressed: (){}, child: Text("See All"),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                GridView.builder(
                 physics: NeverScrollableScrollPhysics(),
                 shrinkWrap: true,
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount:2,
                 crossAxisSpacing: 20, 
                 mainAxisSpacing: 20, 
                ),
                 itemCount: products.length,
                  itemBuilder: ((context, index) {
                   return ProductCard(product: products[index]);
                 }), 
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}





