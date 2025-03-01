import 'package:bookly_app/features/search/presentation/view/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0,),
      child: Column(
        children: [
          const CustomSearchTextField(),
      
        ],
      ),
    );
  }
}


