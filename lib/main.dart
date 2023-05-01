import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class Fonts {
  final TextStyle h1Large = const TextStyle(
    fontSize: 100,
    height: 100,
    fontFamily: 'Livvic',
    fontWeight: FontWeight.bold,
  );

  final TextStyle h1Small = const TextStyle(
    fontSize: 64,
    height: 56,
    fontFamily: 'Livvic',
    fontWeight: FontWeight.bold,
  );

  final TextStyle h2 = const TextStyle(
    fontSize: 48,
    height: 48,
    fontFamily: 'Livvic',
    fontWeight: FontWeight.bold,
  );

  final TextStyle h3 = const TextStyle(
    fontSize: 18,
    height: 28,
    fontFamily: 'Livvic',
    fontWeight: FontWeight.bold,
  );

  final TextStyle body1 = const TextStyle(
    fontSize: 18,
    height: 28,
    fontFamily: 'Livvic',
    fontWeight: FontWeight.w600,
  );

  final TextStyle body2 = const TextStyle(
    fontSize: 15,
    height: 25,
    fontFamily: 'Livvic',
    fontWeight: FontWeight.w600,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // Define a color swatch using MaterialColor
  final MaterialColor myColorSwatch = const MaterialColor(
    0xFF014E56,
    <int, Color>{
      50: Color(0xFF79C8C7),
      100: Color(0xFF2C6269),
      200: Color(0xFF004047),
      300: Color(0xFF012F34),
      400: Color(0xFF002529),
      500: Color(0xFF002529),
      600: Color(0xFF002529),
      700: Color(0xFF002529),
      800: Color(0xFF002529),
      900: Color(0xFF002529),
    },
  );
  final Color primary1 = const Color(0xFF014E56);
  final Color primary2 = const Color(0xFFF67E7E);
  final Color primary3 = Colors.white;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Team Multiple Page Website',
      theme: ThemeData(
        primarySwatch: myColorSwatch,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Fonts font = Fonts();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Placeholder()),
                );
              },
              child: SvgPicture.asset(
                'assets/logos/logo.svg',
                height: 32,
                width: 128, // adjust the logo size as needed
                semanticsLabel: 'My App Logo', // optional - provide a description for accessibility
              ),
            ),
          ),
          centerTitle: false,
          actions: [
            IconButton(
              icon: const Icon(Icons.menu),
              iconSize: 36.0,
              padding: EdgeInsets.only(right: 24.0),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Placeholder()),
                );
              },
            ),
          ]),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text("Yop"),
          ],
        ),
      ),
    );
  }
}
