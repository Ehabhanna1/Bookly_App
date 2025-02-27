import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home_view/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home_view/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       const CustomAppBar(),
        const CustomListViewItem(),

      ],
    );
  }
}





