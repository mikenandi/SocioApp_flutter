import 'package:flutter_learn_basics/data/services/base_service.dart';
import 'package:flutter_learn_basics/models/post.dart';

class GetPostService extends BaseService<List<Post>> {
  @override
  Future<List<Post>> call() async {
    final result = await get('/post');

    return List.generate(
      result['data'].length,
      (index) => Post.fromJson(result['data'][index]),
    );
  }
}
