import 'dart:convert';
import 'package:a2svclean/core/failure.dart';
import 'package:a2svclean/domain/entities/post.dart';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

abstract class PostRemoteDataSource {
  Future<Either<Failure, Post>> createPost(Post post);
}

class PostRemoteDataSourceImpl implements PostRemoteDataSource {
  final Uri _baseUrl = Uri.parse('https://jsonplaceholder.typicode.com');

  @override
  Future<Either<Failure, Post>> createPost(Post post) async {
    try {
      final response = await http.post(
        _baseUrl.resolve('posts'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(post.toJson()),
      );

      if (response.statusCode == 201) {
        final postResponse = await jsonDecode(response.body);
        return Right(Post.fromJson(postResponse));
      } else {
        return Left(Failure('Failed to create post.'));
      }
    } on Exception catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
