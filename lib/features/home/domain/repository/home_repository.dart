import 'package:dartz/dartz.dart';
import 'package:flutter_vidtube/core/errors/failures.dart';
import 'package:flutter_vidtube/features/home/domain/entities/video_entity.dart';

abstract class HomeRepository {
  // fetch the video from youtube
  Future<Either<Failure, VideoEntity>> getVideoByUrl(String url);
}
