import 'package:demo/Authentication/login.dart';
import 'package:demo/Authentication/otp.dart';
import "package:flutter/material.dart";

class MobileLoginState extends StatefulWidget {
  const MobileLoginState({super.key});

  // immutable Widget
  @override
  MobileLogin createState() => MobileLogin();
  // creating State Object of MyWidget

  void inc() {
    debugPrint("Increment");
  }
}

class MobileLogin extends State<MobileLoginState> {
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
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Login",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 212, 208, 202),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                "assets/nature.jpg",
                width: 100,
                height: 100,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 4 - 150,
              ),
              Container(
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 216, 208, 212)
                        .withOpacity(0.6),
                    shape: BoxShape.rectangle,
                    borderRadius: const BorderRadius.all(Radius.circular(8.0))),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 40,
                      width: 300,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 72, 35, 71)),
                      child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const LoginState()));
                          },
                          child: const Text(
                            "Login with Email",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 216, 208, 202)),
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "or",
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      width: 300,
                      child: Text(
                        "Continue with Mobile",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 72, 35, 71),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    // const SizedBox(
                    //   height: 50,
                    // ),
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
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 300,
                      child: OutlinedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const OtpState()));
                          },
                          style: const ButtonStyle(
                            foregroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 212, 208, 202)),
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 72, 35, 71)),
                          ),
                          child: const Text(
                            "Login",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
