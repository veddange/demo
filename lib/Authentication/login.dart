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
  bool isLoginHover = false;
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
                          style: const ButtonStyle(
                              overlayColor:
                                  MaterialStatePropertyAll(Colors.blueGrey),
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.blue),
                              foregroundColor:
                                  MaterialStatePropertyAll(Colors.white),
                              minimumSize: MaterialStatePropertyAll(Size(
                                  150 /*MediaQuery.of(context).size.width / 2*/,
                                  40)),
                              side: MaterialStatePropertyAll(BorderSide(
                                  color: Colors.blueGrey,
                                  style: BorderStyle.solid,
                                  width: 2))),
                          child: const Text(
                            "Login",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
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
                          style:  ButtonStyle(
                              overlayColor:
                                  const MaterialStatePropertyAll(Colors.yellow),
                              backgroundColor:  MaterialStatePropertyAll(
                                  Colors.blueGrey[400]),
                              foregroundColor:
                                  const MaterialStatePropertyAll(Colors.white),
                              minimumSize: const MaterialStatePropertyAll(Size(
                                  150 /*MediaQuery.of(context).size.width / 2*/,
                                  40)),
                              side: const MaterialStatePropertyAll(BorderSide(
                                  color: Colors.blueGrey,
                                  style: BorderStyle.solid,
                                  width: 2))),
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
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
                                overlayColor:
                                    const MaterialStatePropertyAll(Colors.purple),
                                backgroundColor:  MaterialStatePropertyAll(
                                    Colors.purple[300]),
                                foregroundColor: const MaterialStatePropertyAll(
                                    Colors.white),
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
