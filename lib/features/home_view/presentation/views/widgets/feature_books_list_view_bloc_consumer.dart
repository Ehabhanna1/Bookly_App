import 'package:bookly_app/features/home_view/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home_view/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home_view/presentation/views/widgets/feature_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBooksListViewBlocConsumer extends StatefulWidget {
  const FeatureBooksListViewBlocConsumer({super.key});

  @override
  State<FeatureBooksListViewBlocConsumer> createState() => _FeatureBooksListViewBlocBuilderState();
}

class _FeatureBooksListViewBlocBuilderState extends State<FeatureBooksListViewBlocConsumer> {

  List<BookEntity> books=[];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit, FeaturedBooksState>(
      listener: (context, state) {
        if (state is FeaturedBooksSuccess) {
          books.addAll(state.books);
        }
        if (state is FeaturedBooksPaginationFailure) {
          ScaffoldMessenger.of(context)
              .showSnackBar(
                SnackBar(
                backgroundColor: Colors.white,
                content: Text(state.errMessage,
                style: TextStyle(color: Colors.black),
                
                ),
                duration: const Duration(seconds: 4),
                ),);
        }
      },
      builder: (context, state) {
        if (state is FeaturedBooksSuccess || state is FeaturedBooksPaginationLoading || state is FeaturedBooksPaginationFailure
        ) {
           return FeatureBooksListView(
            books: books,
            
            );
        } else if (state is FeaturedBooksFailure) {
          return Text(state.errMessage);
        }else {
          return CircularProgressIndicator();
        }
       
      },
    );
  }
}
