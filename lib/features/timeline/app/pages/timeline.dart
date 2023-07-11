import 'package:flutter/material.dart';
import '../../domain/entities/post.dart';
import '../widgets/clip_view.dart';

part '../utils/utils.dart';

class TimelinePage extends StatefulWidget {
  const TimelinePage({super.key});

  static const route = '/timeline';

  @override
  State<TimelinePage> createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {
  List<Post> posts = clips;
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: posts.length,
          itemBuilder: (context, index) {
            return ClipItemView(
              post: posts[index],
            );
          },
        ),
      ),
    );
  }
}
