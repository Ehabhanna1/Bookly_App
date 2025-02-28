import 'package:bookly_app/features/home_view/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash_view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {

  static const kHomeView = '/homeView';





  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
GoRoute(
        path: kHomeView ,
        builder: (context, state) => const HomeView(),
      ),

    ]
    
    );
}