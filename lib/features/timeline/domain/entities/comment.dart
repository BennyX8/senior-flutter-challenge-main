import 'package:equatable/equatable.dart';

import '../../../profile/domain/entities/user.dart';

class Comment extends Equatable {
  final String id;
  final String text;
  final DateTime time;
  final User user;

  const Comment({
    required this.id,
    required this.text,
    required this.time,
    required this.user,
  });

  @override
  List<Object?> get props => [id, text,time, user];
}
