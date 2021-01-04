import 'package:flutter/material.dart';
import 'package:high_cpc_app/Widgets/web_view.dart';

class CNN extends StatelessWidget {
  static const RouteName = "cnn";
  @override
  Widget build(BuildContext context) {
    return WebViewClass(
        text: "CNN",
        url: "https://edition.cnn.com/",
        color: Colors.black,
        loadingColor: Colors.black);
  }
}
