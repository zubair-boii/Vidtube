import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
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

      final title = videoModel.title;
      final thumbnailUrl = videoModel.thumbnailUrl;
      final videoUrl = videoModel.videoUrl;

      debugPrint("title: $title");
      debugPrint("thumbnailUrl: $thumbnailUrl");
      debugPrint("videoUrl: $videoUrl");

      return Right(videoModel.toEntity());
    } catch (e, stack) {
      print('ERROR FETCHING VIDEO: $e');
      print(stack);

      return Left(ServerFailure());
    }
  }
}
