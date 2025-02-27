import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home_view/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home_view/presentation/views/widgets/feature_books_list_view.dart';
import 'package:flutter/material.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const CustomAppBar(),
          
          FeatureBooksListView(),
          SizedBox(height: 30,),
          Text("Best Seller",style: Styles.textStyle21),
      
        ],
      ),
    );
  }
}







