import 'package:flutter/material.dart';
import 'package:high_cpc_app/Widgets/web_view.dart';

class BBC extends StatelessWidget {
  static const RouteName = "bbc";
  @override
  Widget build(BuildContext context) {
    return WebViewClass(
        text: "BBC",
        url: "https://www.bbc.com/news",
        color: Colors.red[900],
        loadingColor: Colors.red[900]);
  }
}
