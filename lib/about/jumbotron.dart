import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Jumbotron extends StatelessWidget {
  const Jumbotron({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Container(
        width: double.infinity,
        height: 440.0,
        color: Color(0xFF014E56),
        child: Padding(
          padding: const EdgeInsets.only(top: 80.0, left: 24.0, right: 24.0, bottom: 108.0),
          child: Column(children: const [
            Text("About",
                style: TextStyle(
                  fontSize: 40,
                  height: 1,
                  fontFamily: "Livvic",
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                )),
            SizedBox(height: 16.0),
            Text(
              "We help companies build dynamic teams made up of top global talent. Using our network of passionate professionals we drive innovation and deliver incredible outcomes. Talented, diverse teams shape the best products and experiences. We’ll bring those teams to you.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                height: 1.87,
                fontFamily: 'Livvic',
                fontWeight: FontWeight.w600,
                color: Colors.white,
                decoration: TextDecoration.none,
              ),
            )
          ]),
        ),
      ),
      Positioned(
        bottom: -100.0,
        right: -100.0,
        child: SvgPicture.asset("assets/background/bg-pattern-about-1-mobile-nav-1.svg"))
    ]);
  }
}
