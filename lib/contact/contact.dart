import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myteam_multiplepage_website/about/about.dart';

import 'package:myteam_multiplepage_website/contact/contact_form.dart';
import 'package:myteam_multiplepage_website/home/home.dart';
import 'package:myteam_multiplepage_website/shared/footer.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

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
        ),
        endDrawer: Drawer(
            width: 255.0,
            backgroundColor: const Color(0xFF2C6269),
            child: Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: ListView(children: [
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(top: 32.0, bottom: 12.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Home()),
                        );
                      },
                      child: const Text(
                        "home",
                        style: TextStyle(
                          fontFamily: "Livvic",
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                          height: 1.56,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 36.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const About()),
                        );
                      },
                      child: const Text(
                        "about",
                        style: TextStyle(
                          fontFamily: "Livvic",
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                          height: 1.56,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: Container(
                    width: 159.0,
                    height: 48.0,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(999.0)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Contact()),
                            );
                          },
                          child: const Text(
                            "contact us",
                            style: TextStyle(
                              fontFamily: "Livvic",
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              height: 1.56,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            )),
        body: ListView(children: const [
          ContactForm(),
          Footer1(),
        ]));
  }
}
