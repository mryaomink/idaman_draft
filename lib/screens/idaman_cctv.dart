import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class IdamanCttv extends StatefulWidget {
  const IdamanCttv({Key? key}) : super(key: key);

  @override
  State<IdamanCttv> createState() => _IdamanCttvState();
}

class _IdamanCttvState extends State<IdamanCttv> {
  WebViewController? _webViewController;
  @override
  void initState() {
    super.initState();
    _webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0xff000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {},
          onPageStarted: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://cctv.banjarbarukota.go.id/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(
        Uri.parse('https://cctv.banjarbarukota.go.id/'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: WebViewWidget(controller: _webViewController!),
            ),
          ],
        ),
      ),
    );
  }
}
