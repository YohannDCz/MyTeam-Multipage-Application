import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:myteam_multiplepage_website/contact/contact_form.dart';
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
        drawer: Drawer(
          child: Placeholder(),
        ),
        body: ListView(children: const [
          ContactForm(),
          Footer1(),
        ]));
  }
}
