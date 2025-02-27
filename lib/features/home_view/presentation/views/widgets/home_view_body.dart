import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home_view/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home_view/presentation/views/widgets/feature_books_list_view.dart';
import 'package:flutter/material.dart';


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
          Text("Best Seller",style: Styles.textStyle18),
          SizedBox(height: 20,),
          const BestSellerListViewItem(),
      
        ],
      ),
    );
  }
}


class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
      
      AspectRatio(
        aspectRatio: 2.5/3.7,
        child: Container(
         
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage(Assets.testImage),fit: BoxFit.fill),
          ),
        ),
      ),
      const SizedBox(width: 30,),
      Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width*0.5,
            
           child: Text(
                      'Harry Potter and the Goblet of Fire',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kGtSectraFine,
                      ),
                    ),),

        ],
      ),
      
      
        ],
      ),
    );
  }
}







