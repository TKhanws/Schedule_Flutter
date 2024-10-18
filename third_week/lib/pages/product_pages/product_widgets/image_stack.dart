import 'package:flutter/material.dart';

class ImageStackWidget extends StatelessWidget {
  final double topPadding;
  final double screenHeight;
  final String urlImage;
  const ImageStackWidget(
      {super.key,
      required this.topPadding,
      required this.screenHeight,
      required this.urlImage});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -topPadding,
      left: 0,
      right: 0,
      height: 6 / 10 * screenHeight,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(urlImage), fit: BoxFit.fitHeight)),
      ),
    );
  }
}
