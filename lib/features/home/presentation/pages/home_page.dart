import 'package:flutter/material.dart';
import 'package:flutter_vidtube/core/constants/app_constants.dart';
import 'package:flutter_vidtube/features/home/presentation/widgets/download_video_widget.dart';
import 'package:flutter_vidtube/features/home/presentation/widgets/url_input_box_widget.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VidTube'),
        centerTitle: true,
        leading: Image.asset(Constants.appLogoTransparent),
        actions: [IconButton(onPressed: () {}, icon: Icon(Iconsax.setting4))],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Quickly Download Videos',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 25),

              Text(
                'Paste a link from youtube to download the video.',
                style: TextStyle(color: Color(0xff9f9ea6)),
              ),

              const SizedBox(height: 20),
              UrlInputBox(),

              const SizedBox(height: 20),

              DownloadVideoButton(),
            ],
          ),
        ),
      ),
    );
  }
}
