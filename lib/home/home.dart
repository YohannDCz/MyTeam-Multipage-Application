import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:myteam_multiplepage_website/home/jumbtron.dart';
import 'package:myteam_multiplepage_website/home/reinsurance.dart';
import 'package:myteam_multiplepage_website/home/testimonial.dart';

import 'package:myteam_multiplepage_website/shared/contactus.dart';
import 'package:myteam_multiplepage_website/shared/footer.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

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
                MaterialPageRoute(builder: (context) => const Home()),
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
  
      ),
      body: ListView(
        children: const [Jumbotron(), Reinsurance(), Testimonial(), Contactus(), Footer1()],
      ),
    );
  }
}

