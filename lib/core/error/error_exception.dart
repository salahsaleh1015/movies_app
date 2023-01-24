import 'package:movies_app/core/network/error_messaage_model.dart';

class ServerException implements Exception {
 final ErrorMessageModel errorMessageModel;
  ServerException({required this.errorMessageModel});

}

class ErrorLocalDatabaseException implements Exception {
  final String error;
  ErrorLocalDatabaseException({required this.error});

}