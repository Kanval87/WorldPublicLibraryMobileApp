import 'package:flutter/material.dart';
import 'package:wpl_mobile_app/ui/scan_module/scan_module.dart';
import 'package:wpl_mobile_app/ui/search_module/search_module.dart';

class HomeWidget extends StatefulWidget {
  HomeWidget({Key key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
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
            child: SearchModule(),
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
