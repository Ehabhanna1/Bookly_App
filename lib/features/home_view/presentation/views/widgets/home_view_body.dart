import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home_view/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/features/home_view/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home_view/presentation/views/widgets/feature_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 27),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const CustomAppBar(),
          
          FeatureBooksListView(),
          SizedBox(height: 30,),
          Text("Best Seller",style: Styles.textStyle22),
          SizedBox(height: 20,),
          const BestSellerListViewItem(),
      
        ],
      ),
    );
  }
}











