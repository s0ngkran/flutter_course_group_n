import 'package:fpdart/fpdart.dart';

import '../consts/enums.dart';
import '../data/user_model.dart';
import '../modules/json_placeholder/json_placeholder_ctl.dart';
import 'package:http/http.dart' as http;

import 'http_service.dart';

class ApiRepository {
  static Future<Either<ErrorGetTodo, UserModel>> fetchTodo(int id) async {
    Either<String, String> res = await HttpService.get('/todos/$id');
    return res.match((String error) {
      if (error == 'abc') {
        return const Left(ErrorGetTodo.abc);
      } else if (error == 'def') {
        return const Left(ErrorGetTodo.def);
      }
      return const Left(ErrorGetTodo.unknown);
    }, (String body) {
      UserModel user = UserModel.fromRawJson(body);
      return Right(user);
    });
  }

  static Future<Either<ErrorGetUser, UserModel>> fetchUser(int id) async {
    Either<String, String> res = await HttpService.get('/users/$id');
    return res.match(
      (l) {
        if (l == 'o') {
          return const Left(ErrorGetUser.notFound);
        }
        return const Left(ErrorGetUser.unknown);
      },
      (r) {
        UserModel user = UserModel.fromRawJson(r);
        return Right(user);
      },
    );
  }
}
