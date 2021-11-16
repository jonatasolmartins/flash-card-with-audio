import 'package:flutter/material.dart';
import 'screen/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlashCard with audio',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'FlashCards with audio'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: ListView(
        //   scrollDirection: Axis.vertical,
        //   padding: const EdgeInsets.symmetric(vertical: 10.0),
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Container(
        //         height: 100,
        //         color: Colors.black,
        //         // child: IconButton(
        //         //     onPressed: () {}, icon: const Icon(Icons.language)),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Container(
        //         height: 50,
        //         color: Colors.grey,
        //         // child: IconButton(
        //         //     onPressed: () {}, icon: const Icon(Icons.language)),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Container(
        //         height: 25,
        //         color: Colors.grey,
        //         // child: IconButton(
        //         //     onPressed: () {}, icon: const Icon(Icons.language)),
        //       ),
        //     )
        //   ],
        // ),
        title: Text(widget.title),
      ),
      body: const SafeArea(child: Home()),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Videos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoritos',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
