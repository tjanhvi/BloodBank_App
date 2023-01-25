import 'package:flutter/material.dart';
import 'package:bloodbank_app/screens/otp_pin.dart';
import 'package:bloodbank_app/screens/signup.dart';
import 'package:flutter/services.dart';

class MobileNumber extends StatefulWidget {
  const MobileNumber({super.key});

  @override
  State<MobileNumber> createState() => _MobileNumberState();
}

class _MobileNumberState extends State<MobileNumber> {  

  final number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login to your account",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 30.0),

            Text("Enter your mobile number",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 20.0),

            Container(              
              child: Column(
                children: [
                  Container(
                    width: 300,
                    child: TextFormField(
                      controller: number,                     
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        labelText: "Mobile Number",
                        hintText: "Enter your mobile number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [LengthLimitingTextInputFormatter(10)],
                    ),
                  ),

                  SizedBox(height: 20.0),

                  Container(
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () { 
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OtpPin(number.text.toString()),
                          ),
                        );                       
                      },
                      child: Text("Send OTP"),
                    ),
                  ),

                  SizedBox(height: 20.0),

                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "New User? ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),

                        InkWell(
                          child: Text(
                            "Register",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Signup(),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}