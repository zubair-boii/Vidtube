import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vidtube/core/constants/app_constants.dart';
import 'package:flutter_vidtube/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter_vidtube/features/home/presentation/bloc/home_event.dart';
import 'package:flutter_vidtube/features/home/presentation/bloc/home_state.dart';
import 'package:flutter_vidtube/features/home/presentation/widgets/download_video_widget.dart';
import 'package:flutter_vidtube/features/home/presentation/widgets/url_input_box_widget.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController urlController = TextEditingController();

  @override
  void dispose() {
    urlController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VidTube'),
        centerTitle: true,
        leading: Image.asset(Constants.appLogoTransparent),
        actions: [IconButton(onPressed: () {}, icon: Icon(Iconsax.setting4))],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Quickly Download Videos',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 25),

                BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    if (state is HomeLoading) {
                      return CircularProgressIndicator();
                    }

                    if (state is HomeLoaded) {
                      return Container(
                        width: double.infinity,
                        height: 250,
                        child: Image.network(state.video.thumbnailUrl),
                      );
                    }

                    if (state is HomeError) {
                      return Text(state.message);
                    }

                    return Image.asset(Constants.appLogoGradient, height: 200);
                  },
                ),

                const SizedBox(height: 25),

                Text(
                  'Paste a link from youtube to download the video.',
                  style: TextStyle(color: Color(0xff9f9ea6)),
                ),

                const SizedBox(height: 20),

                UrlInputBox(),

                const SizedBox(height: 27),

                DownloadVideoButton(
                  title: "Download Video",
                  onPressed: () {
                    context.read<HomeBloc>().add(
                      GetVideoByUrlEvent(urlController.text),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
