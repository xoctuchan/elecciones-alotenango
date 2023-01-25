import 'package:flutter/material.dart';

class ImagePersonaPartido extends StatelessWidget {
  const ImagePersonaPartido({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        width: 150,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: AssetImage(this.image),
            fit: BoxFit.cover
          ),
        ),
      ),
    );
  }
}