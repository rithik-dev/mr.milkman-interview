import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MyCachedNetworkImage extends StatelessWidget {
  final String url;
  final double borderRadius;
  final double? width;
  final double? height;
  final EdgeInsets padding;
  final bool zoomToFit;

  const MyCachedNetworkImage({
    Key? key,
    required this.url,
    this.width,
    this.height,
    this.zoomToFit = true,
    this.borderRadius = 0,
    this.padding = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: CachedNetworkImage(
          height: height,
          width: width,
          imageUrl: url,
          fit: zoomToFit ? BoxFit.cover : null,
          placeholder: (context, _) => Shimmer.fromColors(
            child: Container(color: Colors.white),
            baseColor: Colors.grey[400]!,
            highlightColor: Colors.white,
            period: const Duration(milliseconds: 500),
          ),
          errorWidget: (context, _, __) => Image.asset(
            "assets/images/app-logo.png",
          ),
        ),
      ),
    );
  }
}
