import 'package:brain_booster/Screens/GameScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animate_do/animate_do.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _width = 0;
  double _height = 15;

  navigatTo() async {
    await Future.delayed(Duration(milliseconds: 7000), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => FirstScreen()));
    });
  }

  loading() async {
    await Future.delayed(Duration(milliseconds: 4500), () {
      setWidth();
    });
  }

  setWidth() {
    setState(() {
      _width = 230;
    });
  }

  @override
  void initState() {
    loading();
    navigatTo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff19849b),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FadeIn(
            duration: Duration(seconds: 2),
            child: Container(
              child: Image.asset(
                'assets/puzzpleImage.png',
                // height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 1,
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeInUp(
                delay: Duration(seconds: 1),
                duration: Duration(seconds: 1),
                child: Container(
                  child: Image.asset(
                    'assets/brainBoosterLogo.png',
                    // height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.13,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              FadeInLeftBig(
                delay: Duration(seconds: 2),
                duration: Duration(seconds: 1),
                child: Text(
                  'Brain Games',
                  style: GoogleFonts.dosis(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Stack(children: [
            BounceInLeft(
              delay: Duration(seconds: 2),
              child: Container(
                height: 15,
                width: 230,
                decoration: BoxDecoration(
                    color: Color(0xffc4c4c4),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            FadeIn(
              delay: Duration(seconds: 2),
              child: AnimatedContainer(
                height: _height,
                width: _width,
                decoration: BoxDecoration(
                    color: Color(0xff524545),
                    borderRadius: BorderRadius.circular(20)),
                duration: Duration(seconds: 2),
              ),
            ),
          ]),
          SizedBox(
            height: 20,
          ),
          FadeInLeft(
            delay: Duration(seconds: 2),
            child: Text(
              'Loading ...',
              style: GoogleFonts.dosis(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ),
          // FloatingActionButton(
          //   onPressed: () {},
          //   child: const Icon(Icons.play_arrow),
          // )
        ],
      ),
    );
  }
}
