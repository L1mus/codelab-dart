// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:praktik/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "SMA PGRI 1 BOGOR",
          style: TextStyle(color: Colors.black87),
        ),
      ),
      backgroundColor: Colors.redAccent,
      drawer: Drawer(
        child: ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Login'),
                onTap: () {
                  _navigateToNextScreen(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.vpn_key),
                title: Text('Ubah Password'),
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('Tentang'),
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Keluar'),
              )
            ]),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.home,
                      size: 70,
                      color: Colors.blueAccent,
                    ),
                    Text("Home", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.document_scanner_rounded,
                      size: 70,
                      color: Colors.redAccent,
                    ),
                    Text("Mata Pelajaran", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.grading_outlined,
                      size: 70,
                      color: Colors.greenAccent,
                    ),
                    Text("Rapor", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.description_outlined,
                      size: 70,
                      color: Colors.blueGrey,
                    ),
                    Text("Visi & Misi", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void _navigateToNextScreen(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
}
