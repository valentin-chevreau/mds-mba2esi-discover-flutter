import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageGallery extends StatefulWidget {
  @override
  _ImageGalleryState createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<ImageGallery> {
  String imagePath = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Gallery'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: _showSelector,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          imagePath == '' ? Text('No image found') : Text('Image $imagePath'),
          imagePath == '' ? Container() : Image.file(File(imagePath)),
        ],
      ),
    );
  }

  _showSelector() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Pick a source'),
            content: Text("Where does your picture come from?"),
            actions: <Widget>[
              FlatButton(
                child: Text('Gallery'),
              ),
              FlatButton(
                child: Text('Camera'),
                onPressed: () {
                  _pickImage();
                },
              ),
            ],
          );
        });
  }

  Future _pickImage() async {
    // var image = await ImagePicker.pickImage(source: ImageSource.camera);
    // print(image.path);

    ImagePicker.pickImage(source: ImageSource.camera).then((file) {
      print(file.path);

      setState(() {
        imagePath = file.path;
      });
    });
  }
}
