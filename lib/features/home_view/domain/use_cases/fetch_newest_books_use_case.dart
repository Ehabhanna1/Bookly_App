

import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/use_cases/use_case.dart';
import 'package:bookly_app/features/home_view/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home_view/domain/repositories/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity> , NoParams>{

  final HomeRepo homeRepo;

  FetchNewestBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParams? params]) async{
    return await homeRepo.fetchNewestBooks();
  }


}