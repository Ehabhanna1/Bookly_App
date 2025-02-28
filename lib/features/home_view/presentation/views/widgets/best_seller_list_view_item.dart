import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home_view/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';


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
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(Assets.testImage),fit: BoxFit.fill),
          ),
        ),
      ),
      const SizedBox(width: 30,),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width*0.5,
              
             child: Text(
                        'Harry Potter and the Goblet of Fire',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle22.copyWith(
                          fontFamily: kGtSectraFine,
                          
                        ),
                      ),),
                      const SizedBox(height:3,),
                      Text(
                        'J.K Rowling',
                        style: Styles.textStyle16,
                      ),
                      const SizedBox(height:3,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                        '19.99€',
                        style: Styles.textStyle22.copyWith(
                          fontWeight: FontWeight.bold,),
                        ),
        
                       const BookRating(),
                        
                      ],),
        
          ],
        ),
      ),
      
      
        ],
      ),
    );
  }
}



