import 'dart:ui';

import 'package:flutter/material.dart';

class ImageBackground extends StatelessWidget {
  const ImageBackground({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/shopping.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 3, 4, 94).withOpacity(0.3),
          ),
        ),
      ),
    );
  }
}
