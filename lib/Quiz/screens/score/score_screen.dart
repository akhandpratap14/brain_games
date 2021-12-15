import 'package:brain_booster/Screens/GameScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';
import 'package:brain_booster/Quiz/constants.dart';
import 'package:brain_booster/Quiz/controllers/question_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/bg.svg", fit: BoxFit.fill),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(color: kSecondaryColor),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "${_qnController.correctAns * 10}/${_qnController.questions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: kSecondaryColor),
              ),
              SizedBox(
                height: 30,
              ),
              Bounce(
                  child: Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          ' Go Home',
                          style: GoogleFonts.quicksand(
                              fontSize: 22, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  duration: Duration(milliseconds: 200),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FirstScreen()));
                  })
            ],
          )
        ],
      ),
    );
  }
}
