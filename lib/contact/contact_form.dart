import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          width: double.infinity,
          height: 1130.0,
          color: Color(0xFF014E56),
          child: Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Column(children: const [
                  Padding(
                    padding: EdgeInsets.only(bottom: 16.0),
                    child: Text(
                      "Contact",
                      style: TextStyle(
                        fontSize: 40,
                        height: 1,
                        fontFamily: 'Livvic',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    "Ask about us",
                    style: TextStyle(
                      fontSize: 32,
                      height: 1.5,
                      fontFamily: 'Livvic',
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF67E7E),
                    ),
                  )
                ]),
              ),
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 24.0),
                  child: SizedBox(
                      width: 327.0,
                      height: 72.0,
                      child: Row(children: [
                        SvgPicture.asset("assets/icons/icon-person.svg"),
                        const SizedBox(width: 24.0),
                        const Flexible(
                          child: Text(
                            "The quality of our talent network",
                            style: TextStyle(
                              fontSize: 18,
                              height: 1.56,
                              fontFamily: 'Livvic',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            softWrap: true,
                          ),
                        )
                      ])),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 24.0),
                  child: SizedBox(
                      width: 327.0,
                      height: 72.0,
                      child: Row(children: [
                        SvgPicture.asset("assets/icons/icon-cog.svg"),
                        const SizedBox(width: 24.0),
                        const Flexible(
                          child: Text(
                            "Usage & implementation of our software",
                            style: TextStyle(
                              fontSize: 18,
                              height: 1.56,
                              fontFamily: 'Livvic',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            softWrap: true,
                          ),
                        )
                      ])),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 24.0),
                  child: SizedBox(
                      width: 327.0,
                      height: 72.0,
                      child: Row(children: [
                        SvgPicture.asset("assets/icons/icon-chart.svg"),
                        const SizedBox(width: 24.0),
                        const Flexible(
                          child: Text(
                            "How we help drive innovation",
                            style: TextStyle(
                              fontSize: 18,
                              height: 1.56,
                              fontFamily: 'Livvic',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            softWrap: true,
                          ),
                        )
                      ])),
                ),
              ]),
              MyCustomForm(),
            ]),
          )),
      Positioned(bottom: -100.0, right: -100.0, child: SvgPicture.asset("assets/background/bg-pattern-contact-2.svg")),
    ]);
  }
}

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Define a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: SizedBox(
        width: 327.0,
        height: 538.0,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(fontSize: 15.0, fontFamily: "Livvic", fontWeight: FontWeight.w600, height: 1.67, color: Color(0x3CFFFFFF)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1.0,
                    ),
                  ),
                  
                ),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Email Adress',
                    labelStyle: TextStyle(fontSize: 15.0, fontFamily: "Livvic", fontWeight: FontWeight.w600, height: 1.67, color: Color(0x3CFFFFFF)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.white,
                      width: 1.0,
                    ))),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Company Name',
                    labelStyle: TextStyle(fontSize: 15.0, fontFamily: "Livvic", fontWeight: FontWeight.w600, height: 1.67, color: Color(0x3CFFFFFF)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.white,
                      width: 1.0,
                    ))),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Title',
                    labelStyle: TextStyle(fontSize: 15.0, fontFamily: "Livvic", fontWeight: FontWeight.w600, height: 1.67, color: Color(0x3CFFFFFF)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.white,
                      width: 1.0,
                    ))),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Message',
                    labelStyle: TextStyle(fontSize: 15.0, fontFamily: "Livvic", fontWeight: FontWeight.w600, height: 1.67, color: Color(0x3CFFFFFF)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.white,
                      width: 1.0,
                    )),
                  ),
                minLines: 4,
                maxLines: 5,
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  fixedSize: MaterialStateProperty.all(Size(123, 48)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(999.0),
                    ),
                  ),
                  side: MaterialStateProperty.all(BorderSide.none),
                ),
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    fontFamily: "Livvic",
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    height: 1.56,
                    color: Colors.black, // This sets the button's text color
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
