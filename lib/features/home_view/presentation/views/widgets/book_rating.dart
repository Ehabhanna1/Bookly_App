import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          
          color: Color(0xffFFDD4F),
          
        ),
        const SizedBox(width: 7,),
        Text("4.9",style: Styles.textStyle20.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          
          ),),
        const SizedBox(width: 5,),
        Text("(3452)",style: Styles.textStyle16,)
      ],
    );
  }
}