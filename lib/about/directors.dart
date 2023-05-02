import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<Map<dynamic, String>> directorMap = [
  {"image": 'assets/avatars/avatar-nikita.jpg', "name": 'Nikita Marks', "role": 'Founder & CEO'},
  {"image": 'assets/avatars/avatar-christian.jpg', "name": 'Christian Duncan', "role": 'Co-founder & COO'},
  {"image": 'assets/avatars/avatar-cruz.jpg', "name": 'Cruz Hamer', "role": 'Co-founder & CTO'},
  {"image": 'assets/avatars/avatar-drake.jpg', "name": 'Drake Heaton', "role": 'Business Development Lead'},
  {"image": 'assets/avatars/avatar-griffin.jpg', "name": 'Griffin Wise', "role": 'Lead Marketing'}
];

class Directors extends StatelessWidget {
  const Directors({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: double.infinity,
        height: 2062.0,
        color: const Color(0xFF004047),
        child: const Padding(
          padding: EdgeInsets.only(top: 88.0, bottom: 48.0),
          child: Text(
            "Meet the directors",
            style: TextStyle(
              fontSize: 32,
              height: 1,
              fontFamily: 'Livvic',
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      Positioned(
          top: 168.0,
          right: 24.0,
          left: 24.0,
          child: Column(children: [
            Director(image: directorMap[0]["image"]!, name: directorMap[0]["name"]!, role: directorMap[0]["role"]!),
            Director(image: directorMap[1]["image"]!, name: directorMap[1]["name"]!, role: directorMap[1]["role"]!),
            Director(image: directorMap[2]["image"]!, name: directorMap[2]["name"]!, role: directorMap[2]["role"]!),
            Director(image: directorMap[3]["image"]!, name: directorMap[3]["name"]!, role: directorMap[3]["role"]!),
            Director(image: directorMap[4]["image"]!, name: directorMap[4]["name"]!, role: directorMap[4]["role"]!),
            const LastCard(),
          ])),
        Positioned(left: -100.0, top: -100.0, child: SvgPicture.asset("assets/background/bg-pattern-about-2-contact-1.svg")),
        Positioned(bottom: 0, right: 0, child: SvgPicture.asset("assets/background/bg-pattern-home-4-about-3.svg")),
    ]);
  }
}

class LastCard extends StatelessWidget {
  const LastCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: SizedBox(
          width: 327.0,
          height: 281.0,
          child: Stack(children: [
            Container(
              width: double.infinity,
              height: 253.0,
              color: const Color(0xFF012F34),
            ),
            Positioned(
              top: 32.0,
              right: 24.0,
              left: 24.0,
              child: Column(children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    "Aden Allan",
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.56,
                      fontFamily: 'Livvic',
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF79C8C7),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 24.0),
                  child: Text(
                    '“Empowered teams create truly amazing products. Set the north star and let them follow it.”',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.67,
                      fontFamily: 'Livvic',
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  SvgPicture.asset('assets/icons/icon-twitter.svg'),
                  SizedBox(width: 16.0),
                  SvgPicture.asset('assets/icons/icon-linkedin.svg'),
                ])
              ]),
            ),
            Positioned(
              bottom: 0,
              right: 135.0,
              left: 136.0,
              child: Container(
                  width: 56.0,
                  height: 56.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(999.0),
                    color: const Color(0xFF79C8C7),
                  ),
                  child: SvgPicture.asset("assets/icons/icon-close.svg", width: 16, height: 16, fit: BoxFit.scaleDown, color: Color(0xFF012F34))),
            ),
          ])
        ),
    );
  }
}

class Director extends StatelessWidget {
  const Director({
    super.key,
    required this.image,
    required this.name,
    required this.role,
  });

  final String image;
  final String name;
  final String role;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: SizedBox(
        width: 327.0,
        height: 281.0,
        child: Stack(children: [
          Container(
            width: double.infinity,
            height: 253.0,
            color: const Color(0xFF012F34),
          ),
          Positioned(
            top: 32.0,
            right: 24.0,
            left: 24.0,
            child: Column(children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFFC4FFFE),
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.circular(999.0),
                ),
                child: CircleAvatar(
                  radius: 48.0,
                  backgroundImage: AssetImage(image),
                ),
              ),
              const SizedBox(height: 16.0),
              Text(name,
                  style: const TextStyle(
                    fontFamily: "Livvic",
                    fontSize: 18.0,
                    height: 1.56,
                    color: Color(0xFF79C8C7),
                    fontWeight: FontWeight.bold,
                  )),
              Text(role,
                  style: const TextStyle(
                    fontFamily: "Livvic",
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                    height: 1.67,
                    color: Colors.white,
                  )),
            ]),
          ),
          Positioned(
            bottom: 0,
            right: 135.0,
            left: 136.0,
            child: Container(
                width: 56.0,
                height: 56.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(999.0),
                  color: const Color(0xFFF67E7E),
                ),
                child: SvgPicture.asset("assets/icons/icon-cross.svg", width: 16, height: 16, fit: BoxFit.scaleDown)),
          ),
        ]),
      ),
    );
  }
}
