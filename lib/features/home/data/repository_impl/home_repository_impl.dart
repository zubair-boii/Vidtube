import 'package:dartz/dartz.dart';
import 'package:flutter_vidtube/core/errors/failures.dart';
import 'package:flutter_vidtube/features/home/data/datasources/remote/home_remote_datasource.dart';
import 'package:flutter_vidtube/features/home/data/models/video_model.dart';
import 'package:flutter_vidtube/features/home/domain/entities/video_entity.dart';
import 'package:flutter_vidtube/features/home/domain/repository/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDatasource remoteDatasource;

  HomeRepositoryImpl({required this.remoteDatasource});

  @override
  Future<Either<Failure, VideoEntity>> getVideoByUrl(String url) async {
    try {
      final VideoModel videoModel = await remoteDatasource.getVideoByUrl(url);
      return Right(videoModel.toEntity());
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
