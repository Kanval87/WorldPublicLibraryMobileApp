import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ScanModule extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ScanModuleState();
  }
}

class _ScanModuleState extends State<ScanModule> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).primaryColor,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {
                          getImage();
                        },
                        child: Text('Open'),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Future getImage() async {
    File picture = await ImagePicker.pickImage(
      source: ImageSource.camera,
    );
  }
}
