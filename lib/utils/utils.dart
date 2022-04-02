import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

pickeImage() async {
  ImagePicker _imagePicker = ImagePicker();
  XFile? _image = await _imagePicker.pickImage(source: ImageSource.gallery);

  if (_image != null) {
    return await _image.readAsBytes();
  }
  print("no image was selected");
}

showSnackBar(String content, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
    ),
  );
}
