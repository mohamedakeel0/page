





import 'package:page/core/network/error_message_model.dart';

class ServerException implements Exception{
  final ErrorMessageModel errorMessageModel;
const  ServerException({required this.errorMessageModel});
}
