import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  final String imageUrl; // 图片url
  final double width; // 图片宽度
  final double height; // 图片高度
  final BoxFit fit; // fit
  final double circular; // 所有角都是圆角
  final double topLeft; // 图片左上圆角
  final double topRight;
  final double bottomLeft;
  final double bottomRight;
  final VoidCallback onTop;

  ImageView(
      {this.imageUrl = '',
      this.width = 0,
      this.height = 0,
      this.fit = BoxFit.cover,
      this.circular = 0,
      this.topLeft = 0,
      this.topRight = 0,
      this.bottomLeft = 0,
      this.bottomRight = 0,
      this.onTop});

  @override
  Widget build(BuildContext context) {
    /// 加载错误时
    var errorWidget = Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(circular), color: Colors.black38),
      child: Icon(Icons.broken_image, size: 30, color: Colors.white),
    );

    // 图片
    var imgWidth = width;
    if (imgWidth <= 0) {
      imgWidth = double.infinity;
    }
    var imgHeight = height;
    if (imgHeight <= 0) {
      imgHeight = double.infinity;
    }
    var image = CachedNetworkImage(
        width: imgWidth,
        height: imgHeight,
        imageUrl: imageUrl,
        fit: fit,
        errorWidget: (context, url, error) => errorWidget);

    return Material(
      clipBehavior: Clip.antiAlias,
      borderRadius: circular == 0
          ? BorderRadius.only(
              topLeft: Radius.circular(topLeft),
              topRight: Radius.circular(topRight),
              bottomLeft: Radius.circular(bottomLeft),
              bottomRight: Radius.circular(bottomRight))
          : BorderRadius.circular(circular),
      child: InkWell(
        onTap: onTop,
        child: image,
      ),
    );
  }
}
