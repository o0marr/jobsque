import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppImage extends StatelessWidget {
  final String url;

  final double? height, width;
  final Color? color;
  final BoxFit fit;

  const AppImage(this.url,
      {Key? key,
      this.height,
      this.width,
      this.color,
      this.fit = BoxFit.scaleDown}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (url.endsWith("svg")) {
      return SvgPicture.asset(
        "assets/svg$url",
        height: height,
        width: width,
        fit: fit,
        color: color,
      );
    } else if (url.startsWith("http")) {
      return Image.network(
        url,
        height: height,
        width: width,
        fit: fit,
        color: color,
        errorBuilder: (context, error, stackTrace) => Text("404"),
      );
    } else {
      return Image.asset(
        "assets/images/$url",
        height: height,
        width: width,
        fit: fit,
        color: color,
        errorBuilder: (context, error, stackTrace) => Text("404"),
      );
    }
  }
}
