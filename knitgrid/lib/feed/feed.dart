import 'package:flutter/material.dart';
import 'package:webviewx/webviewx.dart';

class Feed extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  late WebViewXController webviewController;

  @override
  Widget build(BuildContext context) {
    return WebViewX(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      initialContent:
          '<a class="twitter-timeline" href="https://twitter.com/KnittingDaily?ref_src=twsrc%5Etfw">Tweets by KnittingDaily</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>',
      initialSourceType: SourceType.html,
      onWebViewCreated: (controller) => webviewController = controller,
    );
  }
}
