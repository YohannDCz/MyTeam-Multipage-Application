import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Screen1 extends StatelessWidget {
  const Screen1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
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
    ]);
  }
}
