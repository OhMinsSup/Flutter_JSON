import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter_intro/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter JSON_TEST',
        theme: ThemeData(primarySwatch: Colors.lightBlue),
        home: JSONTest());
  }
}

class JSONTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String json =
        '{"name":"veloss", "email": "public.veloss@naver.com", "created_time": 123213, "address": {"street":"LA", "city":"LAs"}}';
    Map<String, dynamic> userMap = jsonDecode(json);

    var user = User.fromJson(userMap);

    return Scaffold(
      body: Center(
          child: Text(
              "JSON Text \n name: ${user.name} \n email: ${user.email} \n created_time: ${user.createdTime} address: ${user.address}")),
    );
  }
}
