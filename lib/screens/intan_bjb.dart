import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class IntanBjb extends StatefulWidget {
  const IntanBjb({super.key});

  @override
  State<IntanBjb> createState() => _IntanBjbState();
}

class _IntanBjbState extends State<IntanBjb> {
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
            if (request.url.startsWith(
                'https://intanbjb.banjarbarukota.go.id/online/web')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(
        Uri.parse('http://intanbjb.banjarbarukota.go.id/online/web'),
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
