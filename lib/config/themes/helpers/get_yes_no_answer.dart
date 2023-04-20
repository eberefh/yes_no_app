import 'package:dio/dio.dart';
import 'package:yes_no_app/infraestructure/models/yes_no_models.dart';

import '../../../domain/entities/message.dart';

class GetYesNoAnwer {
  final _dio = Dio();

  Future<Message> getANwer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    final yesNoModels = YesNoModels.fromJsonMap(response.data);

    return yesNoModels.toMessageEntiy();
  }
}


//
