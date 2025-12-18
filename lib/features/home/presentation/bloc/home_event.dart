abstract class HomeEvent {}

class GetVideoByUrlEvent extends HomeEvent {
  final String url;
  GetVideoByUrlEvent(this.url);
}
