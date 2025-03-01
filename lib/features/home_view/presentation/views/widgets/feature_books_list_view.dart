

import 'package:bookly_app/features/home_view/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
      
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5 ),
            child: const CustomBookImage(),
          );
        } ,
      ),
    );
  }
}