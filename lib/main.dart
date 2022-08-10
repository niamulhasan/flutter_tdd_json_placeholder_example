import 'package:flutter/material.dart';
import 'package:unit_test/datasources/user_datasource.dart';
import 'package:unit_test/models/user_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  var userDatasource = UserDatasource();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Center(
            child: FutureBuilder(
                future: userDatasource.getUsers(),
                builder: (context, AsyncSnapshot<List<UserModel>> sn) {
                  if (sn.hasData) {
                    return ListView.builder(
                        itemCount: sn.data!.length,
                        itemBuilder: (context, index) => ListTile(
                              leading: CircleAvatar(
                                child: Text(sn.data![index].id.toString()),
                              ),
                              title: Text(sn.data![index].title ?? "No Title"),
                            ));
                  }
                  return CircularProgressIndicator();
                }),
          ),
        ),
      ),
    );
  }
}
