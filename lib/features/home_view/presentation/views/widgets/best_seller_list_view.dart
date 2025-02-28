import 'package:bookly_app/features/home_view/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';



class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {

   




    return ListView.builder(
      padding: EdgeInsets.zero,
      
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 6,
      itemBuilder: (context, index) {
    
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: const BestSellerListViewItem(),
        );
      },
      
      
      );
  }
}