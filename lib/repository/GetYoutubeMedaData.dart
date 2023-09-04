import 'package:dio/dio.dart';
import '../constants/Constants.dart';
import '../model/response/GetDataYoutubeByDataType.dart';
import '../util/Injector.dart';

class GetYoutubeMedaData {
  final Dio dio = locator<Dio>();

  Future<GetDataYoutubeByDataType> getData(String url) async {
    try {
      Response response = await dio.get(Constants.url + url);
      print("------------chahat beladiya----------------");
      print("${response.data}");
      var map = Map<String, dynamic>.from(response.data);
      var fetchedResponse = GetDataYoutubeByDataType.fromJson(map);

      return fetchedResponse;
    } catch (error, stacktrace) {
      throw Exception("Exception occured: $error stackTrace: $stacktrace");
    }
  }
}
