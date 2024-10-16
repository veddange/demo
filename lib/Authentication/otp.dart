// import "dart:ffi";

// ignore_for_file: must_be_immutable

import "package:demo/main.dart";
import "package:flutter/material.dart";

class OtpState extends StatefulWidget {
  OtpState({super.key, required this.txtMobileNumber});

  String txtMobileNumber;
  @override
  Otp createState() => Otp();
}

class Otp extends State<OtpState> {
  TextEditingController txtOtp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Otp",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("OTP"),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // leading: BackButton(
          //   onPressed: () {
          //     Navigator.of(context).pop();
          //   },
          //   color: Colors.black,
          // ),
        ),
        backgroundColor: const Color.fromARGB(255, 72, 35, 71),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const SizedBox(
                  width: 300,
                  child: Text(
                    "Enter OTP",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 300,
                  child: Text(
                    "Enter the One Time Password sent on your mobile number ${widget.txtMobileNumber}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                    controller: txtOtp,
                    obscureText: true,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    decoration: const InputDecoration(
                      hintText: "Enter One Time Password",
                      hintStyle: TextStyle(
                        color: Colors.white38,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 300,
                  child: OutlinedButton (
                      style: const ButtonStyle(
                        overlayColor:  WidgetStatePropertyAll(Color.fromARGB(255, 218, 202, 216)),
                        backgroundColor:  WidgetStatePropertyAll(Color.fromARGB(255, 211, 187, 255)),
                        foregroundColor:  WidgetStatePropertyAll(Colors.indigo),
                        side:  WidgetStatePropertyAll(BorderSide(
                                      color: Color.fromARGB(255, 211, 187, 255),
                                      style: BorderStyle.solid,
                                      width: 2.0)),
                                  alignment: Alignment.center),
                      onPressed: () {
                        if (txtOtp.text.length == 6) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const MyApp()));
                        } else {
                          var alert = AlertDialog(
                            title: const Text("Enter valid One Time Password"),
                            actions: [
                              OutlinedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  }, child: const Text("Got it!"))
                            ],
                          );  
                          showDialog(
                            context: context,
                            builder: (context) {
                              return alert;
                            },
                          );
                        }
                        // Navigator.of(context).push(MaterialPageRoute(
                        //       builder: (context) => const LoginState()));
                      },
                      
                      child: const Text("Continue",
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),
                      )
                    ),
                ),
                const Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
