import 'package:flip_flop/screens/first_page.dart';
import 'package:flip_flop/screens/second_page.dart';
import 'package:flip_flop/screens/third_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.purple[200],
          child: ListView(
            children: [
              DrawerHeader(
                  child: Center(
                      child: Text(
                'L O G O',
                style: TextStyle(fontSize: 35),
              ))),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Page 1',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FirstPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Page 2',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SecondPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Page 3',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Thirdpage()));
                },
              )
            ],
          ),
        ),
      ),
      //endDrawer: Drawer(),
    );
  }
}
