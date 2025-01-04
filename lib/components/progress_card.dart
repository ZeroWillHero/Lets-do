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
        padding: const EdgeInsets.all(10.0),
        child: Column(
          
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Your Progress", style: TextStyle(fontSize: 20, color: textColor)),
            SizedBox(height: 10),
            Row(children: [
              CircularPercentIndicator(
              radius: 50.0,
              lineWidth: 20.0,
              percent: 0.5,
              center: const Text("50%",
                  style: TextStyle(
                      fontSize: 15,
                      color: textColor,
                      fontWeight: FontWeight.bold)),
              progressColor: teritaryColor,
            ),
            const SizedBox(
              width: 10,
            ),
            const Column(
              children: [
                Text("Your Day\nProgress",
                    style: TextStyle(
                        fontSize: 15,
                        color: textColor,
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
