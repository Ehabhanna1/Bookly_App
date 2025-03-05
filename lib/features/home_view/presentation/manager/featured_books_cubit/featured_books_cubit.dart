import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home_view/domain/entities/book_entity.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());
}
