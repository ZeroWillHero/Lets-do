import 'package:flutter/material.dart';
import 'package:letsdo/theme_data.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class OtpFieldCustom extends StatelessWidget {
  const OtpFieldCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return OtpPinField(
      textInputAction: TextInputAction.done,
      onSubmit: (text) {
        print('Entered pin is $text');
      },
      onChange: (text) {
        print('Enter on change pin is $text');
      },

     otpPinFieldInputType: OtpPinFieldInputType.none,
      cursorColor: Colors.indigo,

      // Number of fields
      otpPinFieldStyle: const OtpPinFieldStyle(
        showHintText: false,
        hintTextColor: textColor,
        activeFieldBorderColor: teritaryColor,
        defaultFieldBorderColor: primaryColor,
         
      ),
    );
  }
}
