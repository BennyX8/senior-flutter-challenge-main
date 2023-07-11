import 'package:equatable/equatable.dart';

import '../../../profile/domain/entities/user.dart';

class Like extends Equatable {
  final String id;
  final User user;

  const Like(this.id, this.user);

  @override
  List<Object?> get props => [id, user];
}
