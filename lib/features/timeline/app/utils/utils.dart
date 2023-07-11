part of '../pages/timeline.dart';

List<Post> clips = [
  Post(
    id: 'id',
    title: 'Amazing site to see',
    content: 'Content options for an amazing site',
    likeCount: 2,
    commentCount: 2,
    isLiked: false,
    isCommented: false,
    videoClip:
        'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
    likes: [],
    comments: [],
    publisher: null,
    category: 'category',
    time: DateTime.now(),
  ),
  Post(
    id: 'id2',
    title: 'Another Amazing site to see',
    content: 'Content for another amazing site',
    likeCount: 0,
    commentCount: 1,
    isLiked: false,
    isCommented: false,
    videoClip:
        'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
    likes: [],
    comments: [],
    publisher: null,
    category: 'Luxury',
    time: DateTime.now(),
  ),
];
