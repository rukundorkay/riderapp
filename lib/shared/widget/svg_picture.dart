import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

///[MySvgPicture] handles svg
class MySvgPicture extends StatelessWidget {
  ///initialize
  const MySvgPicture(
    this.svgLink, {
    this.color,
    required this.height,
    super.key,
  });

  ///svg location
  final String svgLink;

  ///svg color
  final Color? color;

  ///svg height
  final double height;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgLink,
      height: height,
      color: color,
    );
  }
}
