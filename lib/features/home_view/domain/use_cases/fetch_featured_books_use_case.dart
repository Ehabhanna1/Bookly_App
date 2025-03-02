import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home_view/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home_view/domain/repositories/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  Future<Either< Failure , List<BookEntity>>> fetchFeaturedBooks(){

    return homeRepo.fetchFeaturedBooks();

  }
}