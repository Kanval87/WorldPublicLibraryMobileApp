// Flutter code sample for material.BottomNavigationBar.1

// This example shows a [BottomNavigationBar] as it is used within a [Scaffold]
// widget. The [BottomNavigationBar] has three [BottomNavigationBarItem]
// widgets and the [currentIndex] is set to index 1. The selected item is
// purple. The `_onItemTapped` function changes the selected item's index
// and displays a corresponding message in the center of the [Scaffold].

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  var _bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    _bottomNavigationBar = BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.camera),
          title: Text(
            'Scan',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
            ),
          ),
          activeIcon: Icon(
            Icons.camera,
            color: Theme.of(context).primaryColor,
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.library_books,
            color: Theme.of(context).primaryColor,
          ),
          icon: Icon(Icons.library_books),
          title: Text(
            'Library Shelf',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.search,
            color: Theme.of(context).primaryColor,
          ),
          icon: Icon(Icons.search),
          title: Text(
            'Search',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.deepPurple,
      onTap: _onItemTapped,
    );

    switch (_selectedIndex) {
      case 0:
        return Scaffold(
          appBar: AppBar(
            title: Text('World Public Library'),
          ),
          body: Center(
            child: ScanModule(),
          ),
          bottomNavigationBar: _bottomNavigationBar,
        );
      case 1:
        return Scaffold(
          appBar: AppBar(
            title: Text('World Public Library'),
          ),
          body: Center(
            child: Text('2:'),
          ),
          bottomNavigationBar: _bottomNavigationBar,
        );
      case 2:
        return Scaffold(
          appBar: AppBar(
            title: Text('World Public Library'),
          ),
          body: Center(
            child: Text('3:'),
          ),
          bottomNavigationBar: _bottomNavigationBar,
        );
      default:
        return Scaffold(
          appBar: AppBar(
            title: Text('World Public Library'),
          ),
          body: Center(
            child: Text('default:'),
          ),
          bottomNavigationBar: _bottomNavigationBar,
        );
    }
  }
}

class ScanModule extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ScanModuleState();
  }
}

class _ScanModuleState extends State<ScanModule> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
    var picture = await ImagePicker.pickImage(
      source: ImageSource.camera,
    );
  }
}
