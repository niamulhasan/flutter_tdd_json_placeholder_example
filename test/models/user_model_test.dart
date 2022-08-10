import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test/models/user_model.dart';

void main() {
  test("UserModel: should return UserModel obj", () {
    String jsonString = '''
{
    "userId": 1,
    "id": 1,
    "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
    "body": "quia et suscipit suscipit recusandae consequuntur expedita et cum reprehenderit molestiae ut ut quas totam nostrum rerum est autem sunt rem eveniet architecto"
  }
  ''';

    var user = UserModel.fromJson(jsonDecode(jsonString));

    expect(user, isA<UserModel>());
  });
}
