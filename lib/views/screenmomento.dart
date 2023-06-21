import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../model/model.dart';

class MomentoScreen extends StatefulWidget {
  final Momentos momento;
  const MomentoScreen(this.momento, {super.key});

  @override
  State<MomentoScreen> createState() => _MomentoScreenState();
}

class _MomentoScreenState extends State<MomentoScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.momento.video)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    _controller.play();
    return Scaffold(
      body: Center(
        child: _controller.value.isInitialized
            ? SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        child: Image.network(
                          fit: BoxFit.cover,
                          'https://images.ecestaticos.com/lzM3fFKMQjDv94Item7FuWC2ZQI=/1x0:1278x719/1338x751/filters:fill(white):format(jpg)/f.elconfidencial.com%2Foriginal%2F01e%2F4da%2F5c5%2F01e4da5c5b070ef57b9125c855bd2cad.jpg',
                          width: 200,
                        )),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      child: AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      ),
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 300,
                        child: Image.network(
                          fit: BoxFit.cover,
                          'https://assets1.ignimgs.com/2016/06/08/marcothumbjpg-bf6642_160w.jpg?width=1280',
                          width: 200,
                        )),
                  ],
                ),
              )
            : Container(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.arrow_back,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
