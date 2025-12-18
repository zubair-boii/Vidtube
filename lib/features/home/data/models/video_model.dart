import 'package:flutter_vidtube/features/home/domain/entities/video_entity.dart';

class VideoModel {
  String? title;
  String? thumbnailUrl;
  String? videoUrl;

  VideoModel({this.title, this.thumbnailUrl, this.videoUrl});

  // video model to entity
  VideoEntity toEntity() {
    return VideoEntity(
      title: title!,
      videoUrl: videoUrl!,
      thumbnailUrl: thumbnailUrl!,
    );
  }
}
