import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override //indicate this method overrides StatelessWidget build.
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Hello Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), //ThemeData
      home: const MyHomePage(),
    ); //MaterialApp
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('MOVIE'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('asset/movie.jpg',
            width: 600,
            height: 600,
            ),
            const SizedBox(height: 100),
            const Text(
              'HERETIC MOVIE',
              style: TextStyle(fontSize: 100),
            ),
          ],
        ),
      ),
    );
  }
}

/*StatelessWidget - base class for widgets that do not hold mutable state

const MyApp({super.key}); - constructor super.key asses an optional key to the base class

key uniquely identify widgets tree

const - ensures immutable constructor

MaterialApp
- sets up app structure: navigation, theme, home screen
-title - visible in the task switcher
-theme - ThemeData(primarySwatch: Color.blue) sets primary color palette
-home - const MyHomePage() sets an initial screen

**/