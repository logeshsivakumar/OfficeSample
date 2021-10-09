import 'package:dio/dio.dart';

class HttpService {
  late Dio _dio;
  final baseUrl = "https://stag-profit.apptivo.net/app/";
  final url = "dao/v6/objective?a=getAll";

  String prepareParams() {
    Map<String, dynamic> param = {};
    param['sessionKey'] = "aeae5711-c569-48ad-8ca7-a813d767fcf8";
    param['employeeId'] = "2115252";
    param['ownerTypeId'] = "8";
    param['ownerId'] = "2115252";
    param['startDate'] = "10/01/2021";
    param['endDate'] = "12/30/2021";
    param['startIndex'] = "0";
    param['numRecords'] = "50";
    param['objectiveStatusIds'] = "[]";
    String queryString = Uri(queryParameters: param).query;
    return queryString;
  }

  HttpService() {
    _dio = Dio();
  }
  Future<Response> getRequest() async {
    String queryString = prepareParams();
    Response response;
    var requestUrl = baseUrl + url + "&" + queryString;
    try {
      response = await _dio.get(requestUrl);
      // print(response.toString());
    } on DioError catch (error) {
      print(error.message);
      throw Exception(error.message);
    }
    return response;
  }
}
