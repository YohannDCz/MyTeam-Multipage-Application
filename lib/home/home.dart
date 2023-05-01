import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:myteam_multiplepage_website/home/jumbtron.dart';
import 'package:myteam_multiplepage_website/home/reinsurance.dart';
import 'package:myteam_multiplepage_website/home/testimonial.dart';

import 'package:myteam_multiplepage_website/shared/contactus.dart';
import 'package:myteam_multiplepage_website/shared/footer.dart';

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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Fonts font = Fonts();

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
        children: const [Jumbotron(), Reinsurance(), Testimonial(), Contactus(), Footer1(key1: "Text2")],
      ),
    );
  }
}
