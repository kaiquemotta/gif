import 'package:flutter/material.dart';
import 'package:share/share.dart';

class GifPage extends StatelessWidget {
  final Map _gigData;
  const GifPage(this._gigData);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black, actions: <Widget>[
        IconButton(
          icon: Icon(Icons.share),
          onPressed: () {
            Share.share(_gigData["images"]["fixed_height"]["url"]);
          },
        )
      ]),
      backgroundColor: Colors.black,
      body: Center(
          child: Image.network(_gigData["images"]["fixed_height"]["url"])),
    );
  }
}
