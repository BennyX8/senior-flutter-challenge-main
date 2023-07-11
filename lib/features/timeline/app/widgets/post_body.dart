import 'package:flutter/material.dart';
import 'post_clip_view.dart';

import '../../domain/entities/post.dart';

class PostBody extends StatefulWidget {
  final Post post;
  const PostBody({Key? key, required this.post}) : super(key: key);

  @override
  State<PostBody> createState() => _PostBodyState();
}

class _PostBodyState extends State<PostBody> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //* Post Media
          PostClipView(post: widget.post),

          //* Title
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 4.0,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    widget.post.title.isNotEmpty
                        ? widget.post.title
                        : widget.post.content,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),
              ],
            ),
          ),

          //* Content
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 4.0,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    widget.post.content,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
