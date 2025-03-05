import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home_view/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home_view/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.fetchFeaturedBooksUseCase) : super(FeaturedBooksInitial());

final FetchFeaturedBooksUseCase fetchFeaturedBooksUseCase;
Future<void> fetchFeaturedBooks() async {
  emit(FeaturedBooksLoading());
  var result = await fetchFeaturedBooksUseCase.call();

  result.fold(
    (failure) {
       emit(FeaturedBooksFailure(failure.message));
       },
     (books){
       emit(FeaturedBooksSuccess(books));
     },
     );
}

}


