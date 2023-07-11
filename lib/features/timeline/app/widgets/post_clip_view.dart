import 'package:flutter/material.dart';

import '../../domain/entities/post.dart';

class PostClipView extends StatelessWidget {
  final Post post;
  const PostClipView({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: const Icon(Icons.video_stable_rounded),
    );
  }
}
