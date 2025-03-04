import 'package:bookly_app/features/home_view/domain/entities/book_entity.dart' ;
import 'package:hive/hive.dart';

void saveBooksData(List<BookEntity> books, String boxName) {
     var box = Hive.box(boxName);
    box.addAll(books);
  }