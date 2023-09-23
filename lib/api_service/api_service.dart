import 'package:dio/dio.dart';
import 'package:dio_practics/utils/constant/constant.dart';


class ApiService{


  final dio = Dio(BaseOptions(baseUrl:baseUrl ));

  _init(){

  }

  void request() async {
    Response response;
    // response = await dio.get();
    // print(response.data.toString());
    // The below request is the same as above.
    response = await dio.get(
      '/test',
      queryParameters: {'id': 12, 'name': 'dio'},
    );
    print(response.data.toString());
  }
}