import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Color(0xffFFDD4F), size: 20),
        const SizedBox(width: 7),
        Text("4.9", style: Styles.textStyle20.copyWith(color: Colors.white)),
        const SizedBox(width: 5),
        Opacity(
          opacity: 0.5,
          child: Text(
            "(3452)",
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
