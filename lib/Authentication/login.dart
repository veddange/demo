// ignore_for_file: unnecessary_const

import 'package:demo/Authentication/mobile_number.dart';
import 'package:demo/Authentication/signup.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable

class LoginState extends StatefulWidget {
  const LoginState({super.key});

  @override
  Login createState() => Login();
}

// ignore: must_be_immutable
class Login extends State<LoginState> {
  Color color = Colors.deepOrangeAccent;
  var isLoginHover = false;
  var isSignUpHover = false;
  var isMobileHover = false;
  TextEditingController txtName = TextEditingController();
  TextEditingController txtPass = TextEditingController();

  // final String title;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Login",
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 218, 202, 216)),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            // title: const Text(''),
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            leading: BackButton(
              color: Colors.black,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 72, 35, 71),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  width: 10,
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 30,
                    ),
                    const SizedBox(
                      width: 300,
                      child: Text(
                        "Login",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 300,
                      child: TextField(
                        controller: txtName,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          hintText: 'Enter Username',
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 300,
                      child: TextField(
                        controller: txtPass,
                        obscureText: true,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          hintText: 'Enter Password',
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                        child: Row(
                      children: [
                        OutlinedButton(
                          onPressed: () {
                            if (txtName.text.isNotEmpty &&
                                txtPass.text.isNotEmpty) {
                              debugPrint(txtPass.text);
                            }
                          },
                          onHover: (value) {
                            setState(() {
                              if (isLoginHover) {
                              isLoginHover = false;
                            } else {
                              isLoginHover = true;
                            }
                            });
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  isLoginHover ? const MaterialStatePropertyAll(Colors.blue) : const MaterialStatePropertyAll(Colors.white),
                              foregroundColor:
                                  isLoginHover ? const MaterialStatePropertyAll(Colors.white) : const MaterialStatePropertyAll(Colors.blue),
                              minimumSize: const MaterialStatePropertyAll(Size(
                                  150 /*MediaQuery.of(context).size.width / 2*/,
                                  40)),
                              side: const MaterialStatePropertyAll(BorderSide(
                                  color: Colors.blueGrey,
                                  style: BorderStyle.solid,
                                  width: 2))),
                          child: const Text("Login"),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()));
                          },
                          onHover: (value) {
                            setState(() {
                              if (isSignUpHover) {
                              isSignUpHover = false;
                            } else {
                              isSignUpHover = true;
                            }
                            });
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  isSignUpHover ? const MaterialStatePropertyAll(Colors.blue) : const MaterialStatePropertyAll(Colors.white),
                              foregroundColor:
                                  isSignUpHover ? const MaterialStatePropertyAll(Colors.white) : const MaterialStatePropertyAll(Colors.blue),
                              minimumSize: const MaterialStatePropertyAll(Size(
                                  150 /*MediaQuery.of(context).size.width / 2*/,
                                  40)),
                              side: const MaterialStatePropertyAll(BorderSide(
                                  color: Colors.blueGrey,
                                  style: BorderStyle.solid,
                                  width: 2))),
                          child: const Text("Sign Up"),
                        ),
                      ],
                    )),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MyWidget()));
                            },
                            onHover: (value) {
                              setState(() {
                              if (isMobileHover) {
                              isMobileHover = false;
                            } else {
                              isMobileHover = true;
                            }
                            });
                            },
                            style: ButtonStyle(
                                backgroundColor: isMobileHover ? const MaterialStatePropertyAll(
                                    Colors.orange) : const MaterialStatePropertyAll(
                                    Colors.white),
                                foregroundColor: isMobileHover ? const MaterialStatePropertyAll(
                                    Colors.white) : const MaterialStatePropertyAll(
                                    Colors.orange),
                                minimumSize: MaterialStateProperty.all(const Size(
                                    300 /*MediaQuery.of(context).size.width / 2*/,
                                    40)),
                                side: const MaterialStatePropertyAll(BorderSide(
                                    color: Color.fromARGB(255, 72, 34, 67),
                                    style: BorderStyle.solid,
                                    width: 2.0)),
                                alignment: Alignment.center),
                            child: const Text(
                              "Continue with Mobile",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ],
                    ),
                    const Spacer()
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

void click() {
  debugPrint("Tapped");
}
