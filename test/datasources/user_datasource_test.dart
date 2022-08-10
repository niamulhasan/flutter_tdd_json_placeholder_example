import 'dart:developer';

import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test/datasources/user_datasource.dart';
import 'package:unit_test/models/user_model.dart';

void main() {
  test("DataSource:getUsers : should reuturn list of UserModel Obj", () async {
    //arranges
    var obj = UserDatasource();

    //act
    var users = await obj.getUsers();

    //assert
    expect(users, isA<List<UserModel>>());

    ///
    //arrange

    //act

    //assert
  });
}
