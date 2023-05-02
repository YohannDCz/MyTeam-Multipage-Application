import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:myteam_multiplepage_website/home/jumbtron.dart';
import 'package:myteam_multiplepage_website/home/reinsurance.dart';
import 'package:myteam_multiplepage_website/home/testimonial.dart';

import 'package:myteam_multiplepage_website/shared/contactus.dart';
import 'package:myteam_multiplepage_website/shared/footer.dart';



class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [Jumbotron(), Reinsurance(), Testimonial(), Contactus(), Footer1()],
    );
  }
}
