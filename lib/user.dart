import 'package:flutter_intro/address.dart';
import 'package:json_annotation/json_annotation.dart';

// pubspec.yml에 있는 루트에서 명령어 flutter pub run build_runner build (watch)
part 'user.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  final String name;
  final String email;
  @JsonKey(name: 'created_time')
  final int createdTime;
  final Address address;

  User(this.name, this.email, this.createdTime, this.address);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

// basic
//class User {
//  final String name;
//  final String email;
//  final int time;
//
//  User(this.name, this.email, this.time);
//
//  User.fromJson(Map<String, dynamic> json)
//      : name = json['name'],
//        email = json['email'],
//        time = json['time'];
//
//  Map<String, dynamic> toJson() => {
//    'name': name,
//    'email': email,
//    'time': time,
//  };
//}