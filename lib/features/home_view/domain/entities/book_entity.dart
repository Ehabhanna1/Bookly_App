class BookEntity {
 
  final String bookId;
  final String title;
  final String? authorName;
  final String? image;
  final num? rating;
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
