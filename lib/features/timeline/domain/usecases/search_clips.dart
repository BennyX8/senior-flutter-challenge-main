import 'package:dartz/dartz.dart';
import '../../../../core/service_helpers/system_data.dart';
import '../repository/timeline_repository.dart';
import '../../../../core/dependencies/usecase.dart';
import '../../../../core/errors/failure.dart';

class SearchClips extends Usecase<SystemData, SearchClipsParams> {
  final TimelineRepository timelineRepository;

  SearchClips(this.timelineRepository);

  @override
  Future<Either<Failure, SystemData>> call(params) {
    return timelineRepository.searchClips(params);
  }
}

class SearchClipsParams {
  final String page;
  final String limit;
  final String query;

  SearchClipsParams(this.query, this.page, this.limit);

  Map<String, String> get props => {
        'query': query,
        'page': page,
        'limit': limit,
      };
}
