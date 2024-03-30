import 'dart:convert';
import 'dart:io';

import 'package:page/core/error/exceptions.dart';
import 'package:page/core/network/dio_helper.dart';
import 'package:page/core/network/error_message_model.dart';
import 'package:page/page/domain/entities/page_entity.dart';



abstract class BaseMainRemoteDataSource {
  Future<PageEntity> getPage(String page);


}

class MainRemoteDataSource extends BaseMainRemoteDataSource {
  @override
  Future<PageEntity> getPage(String page) async{
    final response = await DioHelper.getdata(

        url: 'requests',query: {  "page":page,},token: null
     );


    if (response.statusCode == 200) {
      print('statusCode');
      return PageEntity.fromJson(response.data);
    } else {
      print('eeeeeeeeeeeeeeeeee');
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

}
