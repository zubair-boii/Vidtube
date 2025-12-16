import 'package:flutter_vidtube/features/home/domain/entities/video_entity.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class VideoModel {
  VideoId? id;
  String? title;
  String? description;
  String? thumbnailUrl;
  String? videoUrl;
  Duration? duration;

  VideoModel({
    this.id,
    this.title,
    this.description,
    this.thumbnailUrl,
    this.videoUrl,
    this.duration,
  });

  // video model to entity
  VideoEntity toEntity() {
    return VideoEntity(
      id: id!,
      title: title!,
      description: description!,
      videoUrl: videoUrl!,
      thumbnailUrl: thumbnailUrl!,
      duration: duration!,
    );
  }
}
