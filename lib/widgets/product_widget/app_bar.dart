import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ProductAppBar extends StatelessWidget {
  const ProductAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(10),
      child: Row(
        children: [
          IconButton(
           onPressed: (){
            Navigator.pop(context);
           }, 
           style: IconButton.styleFrom(
            backgroundColor: Colors.white
           ),
           icon: Icon(Ionicons.chevron_back),
          ),
          Spacer(),
          IconButton(
           onPressed: (){}, 
           style: IconButton.styleFrom(
            backgroundColor: Colors.white
           ),
           icon: Icon(Ionicons.share_social_outline),
          ),
          SizedBox(width: 5,),
          IconButton(
           onPressed: (){}, 
           style: IconButton.styleFrom(
            backgroundColor: Colors.white
           ),
           icon: Icon(Ionicons.heart_outline),
          ),
        ],
      ),
    );
  }
}