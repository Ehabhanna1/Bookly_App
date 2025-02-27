import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.30,
      child: AspectRatio(
        aspectRatio: 2.7/4,
        child: Container(
         
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(Assets.testImage),fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}