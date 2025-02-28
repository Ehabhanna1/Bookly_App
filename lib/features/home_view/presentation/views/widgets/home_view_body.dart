import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home_view/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home_view/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home_view/presentation/views/widgets/feature_books_list_view.dart';
import 'package:flutter/material.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {

     return CustomScrollView(
      slivers: [
       const SliverToBoxAdapter(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20.0,),
               child: const CustomAppBar(),
             ),
              
             const FeatureBooksListView(),
            const  SizedBox(height: 30,),
             const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,),
                child: Text("Best Seller",style: Styles.textStyle22),
              ),
              SizedBox(height: 20,),
              
          
            ],
          ) ,
          
        ),

       const SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: const BestSellerListView(),
          ),

          ),
        



      ],

      
    );




  
  }
}














