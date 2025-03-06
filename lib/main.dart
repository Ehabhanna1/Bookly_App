import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/functions/setup_service_locator.dart';
import 'package:bookly_app/core/utils/simple_bloc_observer.dart';
import 'package:bookly_app/features/home_view/data/repositories/home_repo_impl.dart';
import 'package:bookly_app/features/home_view/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home_view/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:bookly_app/features/home_view/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:bookly_app/features/home_view/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home_view/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main()async{

  await Hive.initFlutter();

  Hive.registerAdapter(BookEntityAdapter());

    setupServiceLocator();
 
 await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewestBox);


  

  Bloc.observer = SimpleBlocObserver();


  
  runApp(const BooklyApp());

  


}




final getIt = GetIt.instance;

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create:(context){
          return FeaturedBooksCubit(
            FetchFeaturedBooksUseCase(
              getIt.get<HomeRepoImpl>(),

            ),

          );

        }),
        BlocProvider(create: (context){
          return NewestBooksCubit(
            FetchNewestBooksUseCase(
              getIt.get<HomeRepoImpl>(),
            ),
            
          );
        })
       
        
      ],
    
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        title: 'Bookly',
      
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
