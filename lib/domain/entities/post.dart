import 'dart:convert';

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  const Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'body': body,
    };
  }
}

// Create a new post from JSON.
final post =
    Post.fromJson({"userId": 1, "id": 1, "title": "ef", "body": "sadfasdf"});

// Convert the post to JSON.
final json = post.toJson();

// Print the JSON.
