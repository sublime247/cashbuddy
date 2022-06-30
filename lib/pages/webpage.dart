import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyWebView extends StatefulWidget {
 const MyWebView({Key? key}) : super(key: key);

  @override
  State<MyWebView> createState() => _MyWebViewState();
}

class _MyWebViewState extends State<MyWebView> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
      WebView.platform = AndroidWebView();
  }
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: WebView(
            initialUrl: "https://app.cashbuddy.ng",
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webviewController) {
              _controller.complete(webviewController);
            }),
      ),
    );
  }
}
