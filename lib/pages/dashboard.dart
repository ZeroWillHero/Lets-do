import 'package:flutter/material.dart';
import 'package:letsdo/theme_data.dart';
import '../components/progress_card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.fromLTRB(20,  screenHeight * 0.1, 20, 20),
      
      child: Container(
          height: MediaQuery.of(context).size.height,
          
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.dashboard, color: textColor, size: 30),
                  SizedBox(width:5),
                  Text('Dashboard',
                      style: TextStyle(fontSize: 30, color: textColor)),


                ],
              ),

            ProgressCard(),

            ],

          ),
      ),
    );
  }
}
