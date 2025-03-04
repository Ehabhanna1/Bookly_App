import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home_view/data/data_sources/home_local_data_source.dart';
import 'package:bookly_app/features/home_view/data/data_sources/home_remote_data_source.dart';
import 'package:bookly_app/features/home_view/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home_view/domain/repositories/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo{

  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl({required this.homeLocalDataSource,required this.homeRemoteDataSource});




  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async{
    try {
      List<BookEntity> books;
      books =  homeLocalDataSource.fetchFeaturedBooksFromLocal();

      if(books.isNotEmpty){

        return right(books);
      } 

      books = await homeRemoteDataSource.fetchFeaturedBooks();
  
    return right(books);
 } catch (e) {
   return left(Failure());
}

  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    
    try {
      List<BookEntity> books;
      books =  homeLocalDataSource.fetchNewestBooksFromLocal();

      if(books.isNotEmpty){

        return right(books);
      } 

      books = await homeRemoteDataSource.fetchNewestBooks();
  
    return right(books);
 } catch (e) {
   return left(Failure());
 }
  }


}