import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Contactus extends StatelessWidget {
  const Contactus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(width: double.infinity, height: 302.0, decoration: const BoxDecoration(color: Color(0xFFF67E7E))),
      Positioned(bottom: 0.0, child: SvgPicture.asset('assets/background/bg-pattern-home-6-about-5.svg')),
      Positioned(
        top: 83.0,
        left: 0.0,
        right: 0.0,
        child: Column(children: [
          const Text(
            'Ready to get \nstarted?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              height: 1,
              fontFamily: 'Livvic',
              fontWeight: FontWeight.bold,
              color: Colors.black,
              decoration: TextDecoration.none,
            ),
          ),
          const SizedBox(height: 24.0),
          Container(
              width: 153.0,
              height: 48.0,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(999.0)),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 4.0),
                  child: Text('contact us',
                      style: TextStyle(
                        fontSize: 18,
                        height: 1.56,
                        fontFamily: 'Livvic',
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      )),
                ),
              ))
        ]),
      )
    ]);
  }
}
