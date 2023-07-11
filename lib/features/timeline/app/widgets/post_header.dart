import 'package:flutter/material.dart';

import '../../../profile/domain/entities/user.dart';
import '../../domain/entities/post.dart';

class PostHeader extends StatelessWidget {
  final Post post;
  final void Function(User) onTap;
  final void Function(String) onMenuAction;

  const PostHeader({
    Key? key,
    required this.post,
    required this.onTap,
    required this.onMenuAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          const CircleAvatar(
              radius: 20.0,
              child: Icon(
                Icons.person,
                size: 14.0,
              )),

          //* Horizontal Spacer
          const SizedBox(width: 10.0),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  post.publisher?.name ?? 'Self Pusher',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text(
                  '12:23PM',
                  style: TextStyle(fontSize: 10.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
