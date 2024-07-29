import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageDetailScreen extends StatelessWidget {
  final ImageModel image;

  ImageDetailScreen({required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(image.label)),
      body: Center(
        child: Image.network(image.url),
      ),
    );
  }
}
