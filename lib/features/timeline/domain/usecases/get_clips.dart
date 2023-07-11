import 'package:dartz/dartz.dart';
import '../../../../core/service_helpers/system_data.dart';
import '../../../../core/dependencies/usecase.dart';
import '../../../../core/errors/failure.dart';
import '../repository/timeline_repository.dart';

class GetClips extends Usecase<SystemData, GetClipsParams> {
  final TimelineRepository timelineRepository;

  GetClips(this.timelineRepository);

  @override
  Future<Either<Failure, SystemData>> call(params) {
    return timelineRepository.getClips(params);
  }
}

class GetClipsParams {
  final String page;
  final String limit;

  GetClipsParams(this.page, this.limit);

  Map<String, String> get props => {
    'page': page,
    'limit': limit,
  };
}
