import 'package:a2svclean/core/failure.dart';
import 'package:a2svclean/domain/entities/post.dart';
import 'package:dartz/dartz.dart';

abstract class PostRepository {
  Future<Either<Failure, Post>> createPost(Post post);
}
