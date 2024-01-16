import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class youtubePlayer extends StatefulWidget {
  late final videoURL ;
  youtubePlayer({
    this.videoURL,
});

  @override
  State<youtubePlayer> createState() => _youtubePlayerState();
}

class _youtubePlayerState extends State<youtubePlayer> {
  late YoutubePlayerController _controller;


  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(widget.videoURL);
    _controller = YoutubePlayerController(
      initialVideoId: videoID!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Youtube Player"),
      ),
      body: ListView(
        children: [
          Container(
            height: 250, // Set the desired height
            child: Image.asset("assets/bg-top.png",
            fit: BoxFit.fill,
            ),
          ),
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            onReady: () => debugPrint("Ready"),
            bottomActions: [
              CurrentPosition(),
              ProgressBar(
                isExpanded: true,
              ),
            ],
          ),
          Container(
            height: 200, // Set the desired height
            child: Image.asset("assets/bg-bottom.png",
              fit: BoxFit.fill,

            ),
          ),
        ],
      ),
    );
  }
}
