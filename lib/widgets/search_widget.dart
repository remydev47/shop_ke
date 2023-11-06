import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shop_app/constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kcontentColor,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 5,
      ),
      child: Row(
        children: [
          Icon(Ionicons.search, color: Colors.grey,),
          SizedBox(width: 10,),
          Flexible(
            flex: 4,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                border: InputBorder.none
              ),
            ),
          ),
          Container(
            height: 30,
            width: 1.5,
            color: Colors.grey,
          ),
         IconButton(onPressed: (){}, icon:Icon(Ionicons.options_outline, color: Colors.grey,),),
        ],
      ),
    );
  }
}

