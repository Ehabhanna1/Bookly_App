import 'package:hive/hive.dart';
part 'book_entity.g.dart';
@HiveType(typeId: 0)
class BookEntity {
@HiveField(0)
  final String bookId;
@HiveField(1)
  final String title;
@HiveField(2)
  final String? authorName;
@HiveField(3)
  final String? image;
@HiveField(4)
  final num? rating;
@HiveField(5)
  final num? price;

  BookEntity(
    {
    required this.title,
     required this.authorName,
      required this.image,
       required this.rating,
        required this.price,
         required this.bookId});
}




/// flutter packages pub run build_runner build