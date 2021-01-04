import 'package:flutter/material.dart';
import 'package:high_cpc_app/Widgets/web_view.dart';

class NairaLand extends StatelessWidget {
  static const RouteName = "nairaland";
  @override
  Widget build(BuildContext context) {
    return WebViewClass(
        text: "Nairaland",
        url: "https://www.nairaland.com/",
        color: const Color(0xff175716),
        loadingColor: const Color(0xff175716));
  }
}
