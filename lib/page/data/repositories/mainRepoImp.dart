import 'dart:convert';
import 'dart:io';



import 'package:dartz/dartz.dart';
import 'package:page/core/error/exceptions.dart';
import 'package:page/core/error/faliure.dart';
import 'package:page/page/data/data_sources/mainRemoteDataSourse.dart';
import 'package:page/page/domain/entities/page_entity.dart';
import 'package:page/page/domain/repositories/MainRepo.dart';

class MainRepoImp extends BaseMainRepository {
  final BaseMainRemoteDataSource baseMainRemoteDataSource;


  MainRepoImp(this.baseMainRemoteDataSource,);




  @override
  Future<Either<Failure, PageEntity>> getPage(String page) async {
    final result = await baseMainRemoteDataSource.getPage(page);




    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.errors![0]));
    }
  }


}
