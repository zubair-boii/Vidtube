import 'package:flutter_vidtube/features/home/data/models/video_model.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

abstract class HomeRemoteDatasource {
  Future<VideoModel> getVideoByUrl(String url);
}

class HomeRemoteDatasourceImpl implements HomeRemoteDatasource {
  final YoutubeExplode _youtube = YoutubeExplode();

  @override
  Future<VideoModel> getVideoByUrl(String url) async {
    final video = await _youtube.videos.get(url);

    return VideoModel(
      description: video.description,
      id: video.id,
      thumbnailUrl: video.thumbnails.highResUrl,
      title: video.title,
      videoUrl: video.url,
    );
  }
}
