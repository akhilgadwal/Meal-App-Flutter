import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubeVideo extends StatefulWidget {
  const YoutubeVideo({
    Key? key,
    required this.videoid,
  }) : super(key: key);

  final String videoid;

  @override
  _YoutubeVideoState createState() => _YoutubeVideoState();
}

class _YoutubeVideoState extends State<YoutubeVideo> {
  late YoutubePlayerController _controller;

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController.fromVideoId(
      videoId: widget.videoid,
      autoPlay: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      backgroundColor: Colors.white,
      controller: _controller,
      aspectRatio: 16 / 9,
    );
  }
}
