import 'package:flutter/material.dart';

import '../../domain/entities/post.dart';
import 'comment_button.dart';
import 'like_button.dart';

class PostActions extends StatefulWidget {
  final Post post;
  final void Function(Post) onUpdate;

  const PostActions({
    Key? key,
    required this.post,
    required this.onUpdate,
  }) : super(key: key);

  @override
  State<PostActions> createState() => _PostActionsState();
}

class _PostActionsState extends State<PostActions> {
  bool loading = false;
  int count = 0;

  late Post post;

  @override
  void initState() {
    super.initState();

    count = widget.post.likeCount;
    post = widget.post;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Row(
            children: [
              //* Like Count
              LikeActionButon(
                liked: post.isLiked,
                loading: loading,
                onLike: (status) {},
              ),

              //* Horizontal Spacer
              const SizedBox(width: 4.0),

              Text(
                count == 0 ? '' : '$count',
                style: const TextStyle(fontSize: 12.0),
              ),
            ],
          ),

          //* Horizontal Spacer
          const SizedBox(width: 15.0),

          CommentActionButon(
            post: post,
            value: '${post.commentCount}',
            onComment: (status) {},
          ),

          const Spacer(),

          //* Post Type
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade300,
            ),
            child: Text(
              widget.post.category,
              style: const TextStyle(fontSize: 12.0),
            ),
          ),
        ],
      ),
    );
  }
}
