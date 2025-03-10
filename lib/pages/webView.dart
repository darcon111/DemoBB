import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import '../shared/generalToolbar.dart';

class WebViewPage extends StatefulWidget {
  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  InAppWebViewController? _webViewController;

  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Generaltoolbar(title: 'Credimax',),
      body:
      Stack(
          children: [
      InAppWebView(
        initialUrlRequest: URLRequest(url: WebUri( 'https://tarjetadecredito.bolivariano.com/')),
        onWebViewCreated: (controller) {
          _webViewController = controller;
        },
        onConsoleMessage: (controller, consoleMessage) {
          print("Console Message: ${consoleMessage.message}");
        },
          onLoadStart: (controller, url) async {
            await Future.delayed(Duration(milliseconds: 500));
            setState(() {
          _isLoading = true;
          });
    },
      onLoadStop: (controller, url) {
        setState(() {
          print("cancel");
          _isLoading = false;
        });
      },
          /*onProgressChanged: (controller, progress) {
            if (progress == 100) {
              setState(() {
                _isLoading = false;
              });
            }
          }*/

      ),
            if (_isLoading)
              Center(
                child: CircularProgressIndicator(),
              ),
    ]

    ));
  }
}