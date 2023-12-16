import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;

class HttpService {
  static const String baseUrl = 'https://jsonplaceholder.typicode.com';
  static Future<Either<String, String>> get(String path) async {
    try {
      Uri uri = Uri.parse(baseUrl + path);
      http.Response res = await http.get(uri);
      if (res.statusCode == 200) {
        return Right(res.body);
      } else {
        throw Exception('status code != 200');
      }
    } catch (e) {
      return Left(e.toString());
    }
  }
}
