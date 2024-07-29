import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import '../models/image_model.dart';

class ImageViewModel extends GetxController {
  final RxList<ImageModel> images = <ImageModel>[].obs;
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;

  @override
  void onInit() {
    fetchImages();
    super.onInit();
  }

  Future<void> fetchImages() async {
    final snapshot = await _db.collection('images').get();
    images.value = snapshot.docs
        .map((doc) => ImageModel.fromMap(doc.data(), doc.id))
        .toList();
  }

  Future<void> addImage(File file, String label) async {
    final ref = _storage.ref().child('images/${file.path.split('/').last}');
    await ref.putFile(file);
    final url = await ref.getDownloadURL();
    final docRef = await _db.collection('images').add({
      'url': url,
      'label': label,
    });
    images.add(ImageModel(id: docRef.id, url: url, label: label));
  }
}
