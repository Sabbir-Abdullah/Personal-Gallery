import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_gallery/util/constants.dart';
import 'package:personal_gallery/util/custom_button.dart';
import 'package:personal_gallery/util/welcome_widget.dart';
import 'gallery_screen.dart';
import 'add_image_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Column( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 WelcomeHome(),
                   SizedBox(height: 50),
                   Column(
                    children: [
                    CustomButton.Button(() async {
                      Get.to(() => GalleryScreen());
                    }, 'View Gallery'),
                    SizedBox(height: 10,),
                    CustomButton.Button(() async {
                      Get.to(() => AddImageScreen());
                    }, ' Add New Image'),
                  ],),



              ],
            ),


    );
  }
}
