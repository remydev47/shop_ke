import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  final Function(int) onChange;
  final int currentImage;
  final String image;
  
  const ImageSlider({
     super.key, 
     required this.onChange, 
     required this.currentImage,
     required this.image 
    });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
              height: 250,
              child: PageView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Image.asset(image);
                },
              ),
            );
  }
}