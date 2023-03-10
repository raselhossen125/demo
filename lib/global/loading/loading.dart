import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({
    super.key,
    this.height,
    this.width,
    this.fit,
  });

  final double? height;
  final double? width;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'images/icon/03-42-11-849_512.gif',
      height: height ?? 80,
      width: width ?? 80,
      fit: fit ?? BoxFit.cover,
    );
  }
}
