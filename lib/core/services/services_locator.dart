

import 'package:get_it/get_it.dart';
import 'package:page/page/data/data_sources/mainRemoteDataSourse.dart';
import 'package:page/page/data/repositories/mainRepoImp.dart';
import 'package:page/page/domain/repositories/MainRepo.dart';
import 'package:page/page/domain/use_cases/GetPageUseCase.dart';
import 'package:page/page/presentation/manager/page_cubic.dart';

final sl=GetIt.instance;
class ServicesLocator{
  void init(){
    //Bloc
    sl.registerFactory(() =>MainController(sl()));



    //Use Cases
    sl.registerLazySingleton(() =>GetPageUseCase(sl()));




    //Repository
     sl.registerLazySingleton<BaseMainRepository>(() => MainRepoImp(sl(),));




    //DATA SOURCE
    sl.registerLazySingleton<BaseMainRemoteDataSource>(() => MainRemoteDataSource());


  }
}
