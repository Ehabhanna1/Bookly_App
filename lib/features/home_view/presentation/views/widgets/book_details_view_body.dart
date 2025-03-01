import 'package:bookly_app/features/home_view/presentation/views/widgets/books_details_section.dart';
import 'package:bookly_app/features/home_view/presentation/views/widgets/custom_boo_details_app_bar.dart';
import 'package:bookly_app/features/home_view/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';



class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
   

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,),
      child: Column(
        children: [
      
          const CustomBookDetailsAppBar(),
          const BooksDetailsSection(),
         
          Expanded(child: const SizedBox(height: 40,)),
          const SimilarBooksSection(),

         
         const SizedBox(height: 20,),
      
        ],
      ),
    ) ,
        ),
      ],

    );
   
  }
}











