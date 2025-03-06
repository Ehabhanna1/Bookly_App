import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home_view/data/data_sources/home_local_data_source.dart';
import 'package:bookly_app/features/home_view/data/data_sources/home_remote_data_source.dart';
import 'package:bookly_app/features/home_view/data/repositories/home_repo_impl.dart';
import 'package:bookly_app/main.dart';
import 'package:dio/dio.dart';

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
    getIt.registerSingleton<HomeRepoImpl>(
            HomeRepoImpl(
              homeLocalDataSource: HomeLocalDataSourceImpl(),
              homeRemoteDataSource: HomeRemoteDataSourceImpl(
                getIt.get<ApiService>(),
                
                ),
  
            
            
            ),);
  }