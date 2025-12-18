import 'package:flutter_vidtube/features/home/domain/entities/video_entity.dart';

class HomeState {
  HomeState();
}

class HomeInitial extends HomeState {}

class HomeLoaded extends HomeState {
  final VideoEntity video;
  HomeLoaded(this.video);
}

class HomeLoading extends HomeState {}

class HomeError extends HomeState {
  final String message;
  HomeError(this.message);
}
