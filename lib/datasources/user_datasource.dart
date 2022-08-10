import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:unit_test/models/user_model.dart';

class UserDatasource {
  Future<List<UserModel>> getUsers() async {
    List<UserModel> usersList = [];
    http.Response res =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    List users = jsonDecode(res.body);
    users.forEach((element) {
      usersList.add(UserModel.fromJson(element));
    });
    return usersList;
  }
}
