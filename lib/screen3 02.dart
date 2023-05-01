import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<Map<dynamic, String>> testimonial = [
  {"description": '“The team perfectly fit the specialized skill set required. They focused on the most essential features helping us launch the platform eight months faster than planned.”', "name": 'Kady Baker', "role": 'Product Manager at Bookmark', "image": 'assets/avatars/avatar-kady.jpg'},
  {"description": '“We needed to automate our entire onboarding process. The team came in and built out the whole journey. Since going live, user retention has gone through the roof!”', "name": 'Aiysha Reese', "role": 'Founder of Manage', "image": 'assets/avatars/avatar-aiysha.jpg'},
  {"description": '“Amazing. Our team helped us build an app that delivered a new experience for hiring a physio. The launch was an instant success with 100k downloads in the first month.”', "name": 'Arthur Clarke', "role": 'Co-founder of MyPhysio', "image": 'assets/avatars/avatar-arthur.jpg'}
];

class Testimonial extends StatelessWidget {
  const Testimonial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: double.infinity,
        height: 1410.0,
        color: const Color(0xFF004047),
      ),
      Positioned(top: 0, left: 0, child: SvgPicture.asset("assets/background/bg-pattern-home-4-about-3.svg")),
      Positioned(
        top: 140.0,
        right: 24.0,
        left: 24.0,
        child: Column(children: [
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(children: [
              TextSpan(
                  text: "Delivering real \nresults for top \ncompanies. Some of \nour ",
                  style: TextStyle(
                    fontSize: 32.0,
                    height: 1,
                    fontFamily: 'Livvic',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              TextSpan(
                  text: "sucess stories.",
                  style: TextStyle(
                    fontSize: 32.0,
                    height: 1,
                    fontFamily: 'Livvic',
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF79C8C7),
                  )),
            ]),
          ),
          ListView.builder(
            itemCount: testimonial.length,
            itemBuilder: (BuildContext context, int index) {
              final data = testimonial[index];

              // Utiliser les valeurs de data pour construire le contenu du widget
              final description = data['description'];
              final name = data['name'];
              final role = data['role'];
              final image = data['image'];
              return ListTile(
                title: Testimonial1(description: description!, name: name!, role: role!, image: image!),
                subtitle: Text(''),
              );
            },
          ),
        ]),
      ),
      Positioned(bottom: 0.0, right: 0.0, child: SvgPicture.asset("assets/background/bg-pattern-home-5.svg")),
    ]);
  }
}

class Testimonial1 extends StatelessWidget {
  const Testimonial1({
    super.key,
    required this.description,
    required this.name,
    required this.role,
    required this.image,
  });

  final String description;
  final String name;
  final String role;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 64.0),
        Stack(
          children: [
            Center(child: SvgPicture.asset("assets/icons/icon-quotes.svg")),
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 15.0,
                  height: 1.67,
                  fontFamily: 'Livvic',
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 16.0),
        Column(children: [
          Text(
            name,
            style: const TextStyle(
              fontSize: 18.0,
              height: 1.56,
              fontFamily: 'Livvic',
              fontWeight: FontWeight.bold,
              color: Color(0xFF79C8C7),
            ),
          ),
          Text(
            role,
            style: const TextStyle(
              fontSize: 13.0,
              height: 1.38,
              fontFamily: 'Livvic',
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16.0),
          CircleAvatar(
            radius: 42.0, // adjust the radius as needed
            backgroundImage: AssetImage(image),
            backgroundColor: const Color(0xFF79C8C7),
            // set the background color to match your app's theme // optional text to display on the avatar
          ),
        ]),
      ],
    );
  }
}
