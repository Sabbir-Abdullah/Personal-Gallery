import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view_model/image_view_model.dart';
import 'image_detail_screen.dart';

class GalleryScreen extends StatelessWidget {
  final ImageViewModel viewModel = Get.put(ImageViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gallery',style: TextStyle(fontFamily: 'DancingScript'),)),
      body: Obx(() {
        if (viewModel.images.isEmpty) {
          return Center(child: Text('No images found'));
        }
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: viewModel.images.length,
          itemBuilder: (context, index) {
            final image = viewModel.images[index];
            return Card(
              child: GestureDetector(
                onTap: () {
                  Get.to(() => ImageDetailScreen(image: image));
                },
                child: Image.network(image.url),
              ),
            );
          },
        );
      }),
    );
  }
}
