import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Clients extends StatelessWidget {
  const Clients({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 632.0,
          color: Color(0xFF012F34),
        ),
        Positioned(top: -100.0, left: -100.0, child: SvgPicture.asset("assets/background/bg-pattern-about-4.svg")),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 88.0),
            child: Column(
              children: [
                const Text(
                  "Some of our clients",
                  style: TextStyle(
                    fontSize: 32,
                    height: 1,
                    fontFamily: 'Livvic',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 64.0),
                Padding(
                  padding: const EdgeInsets.only(bottom: 58.0),
                  child: Image.asset(
                    'assets/logos/logo-the-verge.png',
                    width: 146.56,
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 58.0),
                  child: Image.asset(
                    'assets/logos/logo-jakarta-post.png',
                    width: 162.21,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 58.0),
                  child: Image.asset(
                    'assets/logos/logo-the-guardian.png',
                    width: 158.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 58.0),
                  child: Image.asset(
                    'assets/logos/logo-tech-radar.png',
                    width: 148.0,
                  ),
                ),
                Image.asset(
                  'assets/logos/logo-gadgets-now.png',
                  width: 87.0,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
