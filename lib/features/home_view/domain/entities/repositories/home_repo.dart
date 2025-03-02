import 'package:bookly_app/features/home_view/domain/entities/book_entity.dart';

abstract class HomeRepo {
  
  Future<List<BookEntity>> fetchFeaturedBooks();

  Future<List<BookEntity>> fetchNewestBooks();
}