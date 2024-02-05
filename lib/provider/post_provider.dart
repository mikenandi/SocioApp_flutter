import 'package:flutter/material.dart';
import 'package:flutter_learn_basics/data/services/create_post_service.dart';
import 'package:flutter_learn_basics/data/services/get_post_service.dart';
import 'package:flutter_learn_basics/models/post.dart';

class PostProvider extends ChangeNotifier {
  final List<Post> posts = [];
  String message = '';

  getPosts() async {
    posts.clear();
    posts.addAll(await GetPostService().call());
    notifyListeners();
  }

  Future<void> createPost(String token) async {
    await CreatePostService(
      image: null,
      message: message,
      token: token,
    ).call();

    message = '';

    getPosts();
  }
}
