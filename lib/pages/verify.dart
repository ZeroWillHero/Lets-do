import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letsdo/components/custom_button.dart';
import 'package:letsdo/components/otp_field.dart';
import 'package:letsdo/components/time_out_field.dart';
import 'package:letsdo/theme_data.dart';

class Verify extends StatelessWidget {
  const Verify({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: backgroundColor,
      appBar:AppBar(
        backgroundColor: backgroundColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.back();
          },
        ),
      ),

       body:   SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               const Text(
                "Verify \nYour Account",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),

              
            const SizedBox(height: 40,),

              const Text('An verification code had sent to your email.\nPlease verify by entering the code here ',style:TextStyle(
                color:textColor,
              ),),

            const SizedBox(height: 20,),

              const OtpFieldCustom(),
              const SizedBox(height: 20,),
              const TimeOutField(),

              const SizedBox(height: 50,),
              
              Center(child: CustomButton(text: "Verify now", onPressed: (){}))


            ],
          ),
        ),
      ),
    );
  }
}