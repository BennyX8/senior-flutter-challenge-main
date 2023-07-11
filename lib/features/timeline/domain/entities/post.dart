import 'package:equatable/equatable.dart';

import '../../../profile/domain/entities/user.dart';
import 'comment.dart';
import 'like.dart';

class Post extends Equatable {
  final String id;
  final String title;
  final String content;
  final int likeCount;
  final int commentCount;
  final bool isLiked;
  final bool isCommented;
  final String videoClip;
  final List<Like> likes;
  final List<Comment> comments;
  final User? publisher;
  final String category;
  final DateTime time;

  const Post({
    required this.id,
    required this.title,
    required this.content,
    required this.likeCount,
    required this.commentCount,
    required this.isLiked,
    required this.isCommented,
    required this.videoClip,
    required this.likes,
    required this.comments,
    required this.publisher,
    required this.category,
    required this.time,
  });

  @override
  List<Object?> get props => [id];
}
