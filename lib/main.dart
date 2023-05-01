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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
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
              padding: const EdgeInsets.only(right: 24.0),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Placeholder()),
                );
              },
            ),
          ]),
      body: ListView(
        children: const [
          Screen1(),
          Screen2(),
        ],
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 1072.0,
          color: Color(0xFF012F34),
        ),
        Positioned(
          top: 64.0,
          left: 24.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            children: [
            Container(
              width: 50.0,
              height: 4.0,
              color: Color(0xFFF67E7E),
            ),
            const Text(
              "Build & \n manage \n distributed \n teams like no \n one else.",
              style: TextStyle(
                fontFamily: "Livvic",
                fontSize: 32.0,
                height: 1,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ))
          ],),
        )
      ]
    );
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [ Container(
        width: double.infinity,
        height: 567.0,
        decoration: const BoxDecoration(
          color: Color(0xFF014E56),
        ),
        ),
        Column(
          children: <Widget>[
            const SizedBox(height: 80.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 88.0),
              child: RichText(
                textAlign: TextAlign.center,
                overflow: TextOverflow.fade,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Find the best ',
                      style: TextStyle(
                        fontSize: 40.0,
                        height: 1,
                        fontFamily: 'Livvic',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: 'talent',
                      style: TextStyle(
                        fontSize: 40.0,
                        height: 1,
                        fontFamily: 'Livvic',
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF67E7E),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 18.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                "Finding the right people and building high performing teams can be hard. Most companies aren’t tapping into the abundance of global talent. We’re about to change that.",
                textAlign: TextAlign.center,
                style: TextStyle(
                   fontSize: 15.0,
                    height: 1.87,
                    fontFamily: 'Livvic',
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                ),
              ),
            )
          ],
        ),
        Positioned(
          bottom: 0.0,
          child: SvgPicture.asset('assets/background/bg-pattern-home-2.svg'),
        ),
      ]
    );
  }
}
