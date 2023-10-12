import 'package:a2svclean/core/failure.dart';
import 'package:a2svclean/domain/entities/post.dart';
import 'package:a2svclean/domain/repositories/post_repositories.dart';
import 'package:dartz/dartz.dart';

abstract class CreatePostUseCase {
  Future<Either<Failure, Post>> createPost(Post post);
}

class CreatePostUseCaseImpl implements CreatePostUseCase {
  final PostRepository _postRepository;

  CreatePostUseCaseImpl(this._postRepository);

  @override
  Future<Either<Failure, Post>> createPost(Post post) async {
    return await _postRepository.createPost(post);
  }
}
