
import 'package:dartz/dartz.dart';
import 'package:page/core/error/faliure.dart';
import 'package:page/page/domain/entities/page_entity.dart';

abstract class BaseMainRepository {
  Future<Either<Failure, PageEntity>> getPage(
      String page);


}
