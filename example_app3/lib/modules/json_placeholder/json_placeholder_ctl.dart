import 'dart:convert';

import 'package:example_app3/data/juserf.dart';
import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;

import '../../consts/enums.dart';
import '../../data/user_model.dart';
import '../../main.dart';
import '../../services/api_repository.dart';

class JsonPlaceholderCtl extends GetxController {
  // static JsonPlaceholderCtl get to => Get.find();
  var name = ''.obs; // rx type
  var cnt = 1.obs;
  // var data = ['a'].obs;
  var data = <UserModel>[].obs;
  var jdata = <Juserf>[].obs;

  doSomething() {}

  // call() async {
  //   data.add('l');
  //   String path = 'https://jsonplaceholder.typicode.com/todos/${cnt.value}';
  //   cnt.value = cnt.value + 1;
  //   Uri uri = Uri.parse(path);
  //   http.Response res = await http.get(uri);
  //   print('res: body${res.body}\nstatusCode: ${res.statusCode}');
  //   String body = res.body;
  //   var map = json.decode(body);
  //   String title = map['title'];
  //   print('map: ${title}');
  //   data.removeLast();
  //   data.add(title);
  // }
  call() async {
    data.add(UserModel(title: ''));
    String path = 'https://jsonplaceholder.typicode.com/todos/${cnt.value}';
    Uri uri = Uri.parse(path);
    try {
      http.Response res = await http.get(uri);
      print('res: body${res.body}\nstatusCode: ${res.statusCode}');
      String body = res.body;
      // var map = json.decode(body);
      // String title = map['title'];
      // var dat = UserModel.fromJson(map);
      // throw new Exception('error');
      UserModel dat = UserModel.fromRawJson(body);
      var newDat = dat.copyWith(title: 'hi');
      data.removeLast();
      data.add(dat);
      cnt.value = cnt.value + 1;
    } catch (e) {
      Get.snackbar('error occurred', e.toString());
      data.removeLast();
    }
  }

  call2() async {
    jdata.add(const Juserf(name: ''));
    String path = 'https://jsonplaceholder.typicode.com/users/${cnt.value}';
    Uri uri = Uri.parse(path);
    try {
      http.Response res = await http.get(uri);
      print('res: body${res.body}\nstatusCode: ${res.statusCode}');
      String body = res.body;
      // var map = json.decode(body);
      // String title = map['title'];
      // var dat = UserModel.fromJson(map);
      // throw new Exception('error');
      Juserf dat = Juserf.fromJson(json.decode(body));
      jdata.removeLast();
      jdata.add(dat);
      cnt.value = cnt.value + 1;
    } catch (e) {
      Get.snackbar('error occurred', e.toString());
      data.removeLast();
    }
  }

  // // TODO: move to repository
  // Future<Either<ErrorGetUser, UserModel>> apiGetTodo(int id) async {
  //   String path = 'https://jsonplaceholder.typicode.com/todos/$id';
  //   Uri uri = Uri.parse(path);
  //   try {
  //     http.Response res = await http.get(uri);
  //     String body = res.body;
  //     UserModel user = UserModel.fromRawJson(body);
  //     return Right(user);
  //   } catch (e) {
  //     String error = e.toString();
  //     if (error == 'abc') {
  //       return const Left(ErrorGetUser.abc);
  //     } else if (error == 'def') {
  //       return const Left(ErrorGetUser.def);
  //     }
  //     return const Left(ErrorGetUser.unknown);
  //   }
  // }

  Future<Either<ErrorGetTodo, UserModel>> call3() async {

    int id = cnt.value;
    data.add(UserModel(title: ''));
    Either<ErrorGetTodo, UserModel> res = await ApiRepository.fetchTodo(id);
    data.removeLast();
    if (res.isRight()) {
      UserModel user = res.getRight().toNullable()!;
      data.add(user);
      cnt.value = cnt.value + 1;
    }
    return res;
  }
}

// class UserModel {
//   int? userId;
//   int? id;
//   String? title;
//   bool? completed;
//   String? title2;
//   UserModel({
//     this.userId,
//     this.id,
//     this.title,
//     this.completed,
//     this.title2,
//   });
//   factory UserModel.fromJson(Map<String, dynamic> json) {
//     return UserModel(
//       userId: json['userId'],
//       id: json['id'],
//       title: json['title'],
//       completed: json['completed'],
//       title2: json['title2'],
//     );
//   }
// }
