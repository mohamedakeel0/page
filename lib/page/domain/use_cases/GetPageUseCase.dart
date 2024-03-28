
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:page/core/error/faliure.dart';
import 'package:page/page/domain/entities/data1_entity.dart';
import 'package:page/page/domain/entities/page_entity.dart';
import 'package:page/page/domain/repositories/MainRepo.dart';

import '../../../../core/usecase/base_usecase.dart';

class GetPageUseCase
    extends BaseUseCase<PageEntity, String> {
  final BaseMainRepository baseMainRepository;

  GetPageUseCase(this.baseMainRepository);

  @override
  Future<Either<Failure, PageEntity>> call(
      String page) async {
    return await baseMainRepository.getPage(page);
  }


}
