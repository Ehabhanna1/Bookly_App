import 'package:bookly_app/features/home_view/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home_view/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home_view/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBooksListView extends StatefulWidget {
  const FeatureBooksListView({super.key, required this.books});

  final List<BookEntity> books;


  @override
  State<FeatureBooksListView> createState() => _FeatureBooksListViewState();
}

class _FeatureBooksListViewState extends State<FeatureBooksListView> {

 late final ScrollController _scrollController;

 var nextPage = 1;
 var isLoading = false;



  @override
  void initState() {
  
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListner);
  }

  void _scrollListner() async {
    var currentPositions = _scrollController.position.pixels;
    var maxScrollLength = _scrollController.position.maxScrollExtent;
    if (currentPositions >= 0.7 * maxScrollLength) {
      if (!isLoading) {
        isLoading = true;
        await BlocProvider.of<FeaturedBooksCubit>(context).fetchFeaturedBooks(
        pageNumber: nextPage++,
          );
          isLoading = false;

      }
     
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }




  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.30,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: widget.books.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: CustomBookImage(
              image: widget.books[index].image ?? '',
            ),
          );
        },
      ),
    );
  }
}
