

import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home_view/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooksFromLocal({int pageNumber = 0});
  List<BookEntity> fetchNewestBooksFromLocal();
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeaturedBooksFromLocal({int pageNumber = 0}) {
   int startIndex = pageNumber * 10;
   int endIndex = (pageNumber + 1) * 10;

    var box = Hive.box<BookEntity>(kFeaturedBox);
    int length = box.values.length;

    if (startIndex >= length || endIndex > length) {
      return [];
      
    }
    return box.values.toList().sublist(startIndex, endIndex);
  }

  @override
  List<BookEntity> fetchNewestBooksFromLocal() {
    var box = Hive.box<BookEntity>(kNewestBox);
    return box.values.toList();
  }
}