

import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home_view/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooksFromLocal();
  List<BookEntity> fetchNewestBooksFromLocal();
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeaturedBooksFromLocal() {
    var box = Hive.box<BookEntity>(kFeaturedBox);
    return box.values.toList();
  }

  @override
  List<BookEntity> fetchNewestBooksFromLocal() {
    var box = Hive.box<BookEntity>(kNewestBox);
    return box.values.toList();
  }
}