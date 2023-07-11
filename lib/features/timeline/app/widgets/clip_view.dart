import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../domain/entities/post.dart';

class ClipItemView extends StatefulWidget {
  final Post post;

  const ClipItemView({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  State<ClipItemView> createState() => _ClipItemViewState();
}

class _ClipItemViewState extends State<ClipItemView> {
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;

  @override
  void initState() {
    super.initState();

    videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(widget.post.videoClip),
    );

    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shadowColor: Colors.black12,
      child: Container(
        decoration: const BoxDecoration(),
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(4.0),
        child: Chewie(
          controller: chewieController,
        ),
      ),
    );
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }
}
