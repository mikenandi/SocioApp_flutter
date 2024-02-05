import 'package:flutter_learn_basics/models/user.dart';

class Post {
  final int? id;
  final String? message;
  final User? owner;
  final DateTime? date;
  final String? image;

  Post({
    this.id,
    this.message,
    this.owner,
    this.date,
    this.image,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        id: json['id'],
        message: json['message'],
        owner: json['owner'] == null ? null : User.fromJson(json['owner']),
        date: json['date'] == null ? null : DateTime.parse(json['date']),
        image: json['image'],
      );
}
