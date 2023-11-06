import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
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
        child: Padding(
          padding: const EdgeInsets.all(10),
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
            ],
          ),
        ),
      ),
    );
  }
}



