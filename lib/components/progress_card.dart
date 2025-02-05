import 'package:flutter/material.dart';
import 'package:letsdo/theme_data.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProgressCard extends StatelessWidget {
  const ProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: teritaryColor, width: 5),
      ),
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0,20,20.0,20),
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: const Text("Your Progress", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: textColor)),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              
              children: [
              CircularPercentIndicator(
              radius: 40.0,
              lineWidth: 10.0,
              percent: 0.5,
              center: const Text("50%",
                  style: TextStyle(
                      fontSize: 15,
                      color: textColor,
                      fontWeight: FontWeight.bold)),
              progressColor: teritaryColor,
               backgroundColor: Colors.white,
            ),
            const SizedBox(
              width: 20,
            ),
            const Column(
              children: [
                Text("Completed \n50% for today",
                    style: TextStyle(
                        fontSize: 15,
                        color: teritaryColor,
                        fontWeight: FontWeight.bold))
              ],
            )
            ],),

            const SizedBox(height: 10),

            Row(children: [
              CircularPercentIndicator(
              radius: 40.0,
              lineWidth: 10.0,
              percent: 0.5,
              center: const Text("3h",
                  style: TextStyle(
                      fontSize: 15,
                      color: textColor,
                      fontWeight: FontWeight.bold)),
              progressColor: teritaryColor,
              fillColor: backgroundColor,
              backgroundColor: Colors.white,
            ),
            const SizedBox(
              width: 20,
            ),
            const Column(
              children: [
                Text("Remain 3h \nfor today",
                    style: TextStyle(
                        fontSize: 15,
                        color: teritaryColor,
                        fontWeight: FontWeight.bold))
              ],
            )
            ],)


          ],
        ),
      ),
    );
  }
}
