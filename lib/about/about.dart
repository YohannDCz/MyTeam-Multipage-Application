import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:myteam_multiplepage_website/about/jumbotron.dart';

import 'package:myteam_multiplepage_website/shared/footer.dart';
import 'package:myteam_multiplepage_website/shared/contactus.dart';


class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: const [
      Jumbotron(),
      // Directors(),
      // Clients(),
      Contactus(),
      Footer1(key1: "Text1"),
    ]);
  }
}