import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class VideoEntity {
  final VideoId id;
  final String title;
  final String description;
  final String thumbnailUrl;
  final String videoUrl;
  final Duration? duration;

  VideoEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.thumbnailUrl,
    required this.videoUrl,
    required this.duration,
  });
}
