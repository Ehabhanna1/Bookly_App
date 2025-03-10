import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/functions/save_books.dart';
import 'package:bookly_app/features/home_view/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home_view/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {

  Future<List<BookEntity>> fetchFeaturedBooks({int pageNumber = 0});
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource{
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);
  @override
  Future<List<BookEntity>> fetchFeaturedBooks({int pageNumber = 0}) async{
   var data = await apiService.get(endPoint: "volumes?Filtering=free-ebooks&q=programming&startIndex=${pageNumber*10}");
   List<BookEntity> books = getBooksList(data);

    saveBooksData(books, kFeaturedBox);

    return books;
    
    
  }

  

 
  
  @override
  Future<List<BookEntity>> fetchNewestBooks() async{
    var data = await apiService.get(endPoint: "volumes?Filtering=free-ebooks&Sorting=newest&q=programming");
   List<BookEntity> books = getBooksList(data);

    saveBooksData(books, kNewestBox);
    return books;
  }


// method to get books list ===>> ركز وسهل الدنيا ع نفسك
   List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for(var bookMap in data["items"]){
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }
  
}