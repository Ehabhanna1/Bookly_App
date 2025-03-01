import 'package:bookly_app/features/home_view/presentation/views/widgets/custom_boo_details_app_bar.dart';
import 'package:flutter/material.dart';



class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,),
      child: Column(
        children: [
      
          const CustomBookDetailsAppBar(),
      
        ],
      ),
    );
  }
}


