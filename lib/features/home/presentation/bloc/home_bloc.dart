import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vidtube/features/home/domain/usecases/get_video_by_url.dart';
import 'package:flutter_vidtube/features/home/presentation/bloc/home_event.dart';
import 'package:flutter_vidtube/features/home/presentation/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetVideoByUrlUseCase getVideoByUrlUseCase;

  HomeBloc(this.getVideoByUrlUseCase) : super(HomeInitial()) {
    on<GetVideoByUrlEvent>(_onGetVideo);
  }

  Future<void> _onGetVideo(
    GetVideoByUrlEvent event,
    Emitter<HomeState> emit,
  ) async {
    final url = event.url.trim();

    if (url.isEmpty) return emit(HomeError('Please paste a YouTube URL'));

    emit(HomeLoading());
    final result = await getVideoByUrlUseCase(url);
    result.fold(
      (failure) => emit(HomeError('Failed to fetch video')),
      (video) => emit(HomeLoaded(video)),
    );
  }
}
