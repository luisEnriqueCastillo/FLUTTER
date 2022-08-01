import 'package:flutter/material.dart';
import 'package:flutter_application_prueba_1/pages/player_page.dart';

class ReproductorPage extends StatefulWidget {
  @override
  _ReproductorPageState createState() => _ReproductorPageState();
}

class _ReproductorPageState extends State<ReproductorPage> {
  int _selecIndex = 0;

  void _onSelected(int index) {
    setState(() {
      _selecIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selecIndex,
        children: [PlayerPage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35.0,
        elevation: 0.0,

        //fixedColor: ,
        unselectedItemColor: Colors.white,
        backgroundColor: Color.fromRGBO(29, 32, 49, 1.0),
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 35.0,
              ),
              label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.linear_scale), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.house_rounded), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.queue_music_rounded), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.album), label: ""),
        ],
        currentIndex: _selecIndex,
        selectedItemColor: Colors.blue.shade600,
        onTap: _onSelected,
      ),
    );
  }
}
