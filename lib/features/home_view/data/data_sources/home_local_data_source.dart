

import 'package:bookly_app/features/home_view/domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooksFromLocal();
  List<BookEntity> fetchNewestBooksFromLocal();
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeaturedBooksFromLocal() {
    // TODO: implement fetchFeaturedBooksFromLocal
    throw UnimplementedError();
  }

  @override
  List<BookEntity> fetchNewestBooksFromLocal() {
    // TODO: implement fetchNewestBooksFromLocal
    throw UnimplementedError();
  }
}