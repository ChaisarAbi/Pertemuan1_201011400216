import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Navigator(
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            builder: (context) => const MyApp(),
          );
        },
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Center(
            child: Text(
          "06TPLM002 - 201011400216",
          style: TextStyle(fontSize: 12),
        )),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text("Kelas : 02TPLM002"),
          const Text("Chaisar Abi Prasetyo"),
          const Text("Nim : 201011400216"),
          const SizedBox(height: 40),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const gridView()),
                );
              },
              child: const Text("Tugas Selanjutnya"))
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.comment_sharp),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    ));
  }
}

class gridView extends StatefulWidget {
  const gridView({super.key});

  @override
  State<gridView> createState() => _gridViewState();
}

class _gridViewState extends State<gridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gridview - 201011400216"),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 4,
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(5),
              color: Colors.blue[100],
              child: const Text("Hai"),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(5),
              color: Colors.blue[200],
              child: const Text("Hai 2"),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(5),
              color: Colors.blue[300],
              child: const Text("Hai 3"),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(5),
              color: Colors.blue[400],
              child: const Text("Hai 4"),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(5),
              color: Colors.blue[500],
              child: const Text("Hai 5"),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(5),
              color: Colors.blue[600],
              child: const Text("Hai 6"),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(5),
              color: Colors.red[100],
              child: const Text("Hai"),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(5),
              color: Colors.red[200],
              child: const Text("Hai 2"),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(5),
              color: Colors.red[300],
              child: const Text("Hai 3"),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(5),
              color: Colors.red[400],
              child: const Text("Hai 4"),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(5),
              color: Colors.red[500],
              child: const Text("Hai 5"),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(5),
              color: Colors.red[600],
              child: const Text("Hai 6"),
            ),
          ],
        ),
      ),
    );
  }
}
