import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home_view/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home_view/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home_view/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: CustomBookImage(
            image: '',
          ),
        ),
        const SizedBox(height: 40),
        const Text("The Jungle Book", style: Styles.textStyle30),
        const SizedBox(height: 5),

        Text(
          "Rudyard Kipling",
          style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic),
        ),
        const SizedBox(height: 15),
        BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 35),
        const BooksAction(),
      ],
    );
  }
}
