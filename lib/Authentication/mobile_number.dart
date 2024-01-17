import 'package:demo/Authentication/otp.dart';
import "package:flutter/material.dart";

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  // immutable Widget
  @override
  MobileLogin createState() => MobileLogin();
  // creating State Object of MyWidget

  void inc() {
    debugPrint("Increment");
  }
}

class MobileLogin extends State<MyWidget> {
  TextEditingController txtMobileNumber = TextEditingController();
  var isHover = false;
  // const MobileLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Continue with mobile",
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        backgroundColor: const Color.fromARGB(255, 72, 35, 71),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              width: 300,
              child: Text(
                "Continue with Mobile",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const SizedBox(
              width: 300,
              child: Text(
                "Enter your mobile number to continue:",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextField(
                controller: txtMobileNumber,
                style: const TextStyle(
                  color: Color.fromARGB(255, 211, 187, 255),
                ),
                decoration: const InputDecoration(
                    hintText: "Enter Mobile Number",
                    hintStyle: TextStyle(
                      color: Colors.white38,
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const OtpState()));
                  },
                  style: ButtonStyle(
                      foregroundColor: isHover
                          ? const MaterialStatePropertyAll(Colors.white)
                          : const MaterialStatePropertyAll(Colors.blue),
                      backgroundColor: isHover
                          ? const MaterialStatePropertyAll(Colors.blue)
                          : const MaterialStatePropertyAll(Colors.white),
                      side: const MaterialStatePropertyAll(BorderSide(
                        color: Colors.lightBlueAccent,
                      ))),
                  onHover: (val) {
                    setState(() {
                      if (isHover) {
                        isHover = false;
                      } else {
                        isHover = true;
                      }
                    });
                  },
                  child: const Text("Login")),
            ),
            const Spacer()
          ],
        )),
      ),
    );
  }
}
