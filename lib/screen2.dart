import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Screen2 extends StatelessWidget {
  const Screen2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: double.infinity,
        height: 1072.0,
        color: const Color(0xFF012F34),
      ),
      Positioned(top: 0.0, right: -100.0, child: SvgPicture.asset('assets/background/bg-pattern-home-3.svg')),
      Positioned(
        top: 64.0,
        left: 24.0,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            width: 50.0,
            height: 4.0,
            color: const Color(0xFFF67E7E),
          ),
          const SizedBox(height: 32.0),
          const Text("Build & \nmanage \ndistributed \nteams like no \none else.",
              style: TextStyle(
                fontFamily: "Livvic",
                fontSize: 32.0,
                height: 1,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
        ]),
      ),
      Positioned(
        top: 316.0,
        right: 24.0,
        left: 24.0,
        child: Container(
          constraints: const BoxConstraints(maxWidth: 327.0),
          child: Column(children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 48.0),
                child: Column(children: [
                  SvgPicture.asset('assets/icons/icon-person.svg'),
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
                    child: Text(
                      "Experienced Individuals",
                      style: TextStyle(
                        fontSize: 18,
                        height: 1.56,
                        fontFamily: 'Livvic',
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF67E7E),
                      ),
                    ),
                  ),
                  const Text(
                    "Our network is made up of highly experienced professionals who are passionate about what they do.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.67,
                      fontFamily: 'Livvic',
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ]),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 48.0),
                child: Column(children: [
                  SvgPicture.asset('assets/icons/icon-cog.svg'),
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
                    child: Text(
                      "Easy to Implement",
                      style: TextStyle(
                        fontSize: 18,
                        height: 1.56,
                        fontFamily: 'Livvic',
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF67E7E),
                      ),
                    ),
                  ),
                  const Text(
                    "Our processes have been refined over years of implementation meaning our teams always deliver.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.67,
                      fontFamily: 'Livvic',
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ]),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 48.0),
                child: Column(children: [
                  SvgPicture.asset('assets/icons/icon-chart.svg'),
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
                    child: Text(
                      "Enhanced Productivity",
                      style: TextStyle(
                        fontSize: 18,
                        height: 1.56,
                        fontFamily: 'Livvic',
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF67E7E),
                      ),
                    ),
                  ),
                  const Text(
                    "Our customized platform with in-built analytics helps you manage your distributed teams.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.67,
                      fontFamily: 'Livvic',
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ]),
              ),
            ),
          ]),
        ),
      )
    ]);
  }
}
