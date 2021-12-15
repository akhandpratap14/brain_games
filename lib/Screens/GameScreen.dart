import 'package:brain_booster/Quiz/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff19849b),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Select The Game...!',
              style: GoogleFonts.poppins(fontSize: 30, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              height: 400,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: MediaQuery.of(context).orientation ==
                          Orientation.landscape
                      ? 3
                      : 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 60,
                  childAspectRatio: (2 / 1),
                ),
                shrinkWrap: true,
                children: [
                  Bounce(
                    duration: Duration(milliseconds: 200),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WelcomeScreen()));
                    },
                    child: Container(
                      child: Center(
                        child: Image(image: AssetImage('assets/quiz.png')),
                      ),
                    ),
                  ),
                  Bounce(
                    duration: Duration(milliseconds: 200),
                    onPressed: () {},
                    child: Container(
                      child: Center(
                        child: Image(image: AssetImage('assets/puzzle.png')),
                      ),
                    ),
                  ),
                  Bounce(
                    duration: Duration(milliseconds: 200),
                    onPressed: () {},
                    child: Container(
                      child: Center(
                        child:
                            Image(image: AssetImage('assets/comingsoon.png')),
                      ),
                    ),
                  ),
                  Bounce(
                    duration: Duration(milliseconds: 200),
                    onPressed: () {},
                    child: Container(
                      child: Center(
                        child:
                            Image(image: AssetImage('assets/comingsoon.png')),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
