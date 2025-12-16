import 'package:dartz/dartz.dart';
import 'package:flutter_vidtube/core/errors/failures.dart';
import 'package:flutter_vidtube/core/usecases/usecase.dart';
import 'package:flutter_vidtube/features/home/domain/entities/video_entity.dart';
import 'package:flutter_vidtube/features/home/domain/repository/home_repository.dart';

class GetVideoByUrlUseCase implements UseCase<VideoEntity, String> {
  final HomeRepository repository;

  GetVideoByUrlUseCase(this.repository);

  @override
  Future<Either<Failure, VideoEntity>> call(params) {
    return repository.getVideoByUrl(params);
  }
}
