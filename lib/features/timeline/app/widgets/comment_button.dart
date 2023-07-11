import 'package:flutter/material.dart';

import '../../domain/entities/post.dart';

class CommentActionButon extends StatefulWidget {
  final String value;
  final Post post;
  final void Function(bool) onComment;

  const CommentActionButon({
    Key? key,
    required this.post,
    required this.value,
    required this.onComment,
  }) : super(key: key);

  @override
  State<CommentActionButon> createState() => _CommentActionButonState();
}

class _CommentActionButonState extends State<CommentActionButon> {
  late bool commented;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          splashRadius: 32.0,
          onPressed: () async {},
          icon: const Icon(
            Icons.comment,
            size: 24.0,
          ),
        ),

        //* Horizontal Spacer
        const SizedBox(width: 4.0),

        Text(
          widget.value == '0' ? '' : widget.value,
          style: const TextStyle(fontSize: 12.0),
        ),
      ],
    );
  }
}
