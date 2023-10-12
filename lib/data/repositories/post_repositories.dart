import 'package:a2svclean/core/failure.dart';
import 'package:a2svclean/data/datasources/post_datasources.dart';
import 'package:a2svclean/domain/entities/post.dart';
import 'package:a2svclean/domain/repositories/post_repositories.dart';
import 'package:dartz/dartz.dart';

class PostRepositoryImpl implements PostRepository {
  final PostRemoteDataSource _postRemoteDataSource;

  PostRepositoryImpl(this._postRemoteDataSource);

  @override
  Future<Either<Failure, Post>> createPost(Post post) async {
    return await _postRemoteDataSource.createPost(post);
  }
}