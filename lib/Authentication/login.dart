// ignore_for_file: unnecessary_const

import 'package:demo/Authentication/mobile_number.dart';
import 'package:demo/Authentication/signup.dart';
import 'package:demo/main.dart';
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
                Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MyApp()));
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
                      height: 10,
                    ),
                    Image.asset("assets/nature.jpg",
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    const SizedBox(
                      width: 300,
                      child: const Text("Email",
                        style: TextStyle(
                          color: Color.fromARGB(255, 216, 202, 208),
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: TextField(
                        controller: txtName,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          hintText: 'Enter Username',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      width: 300,
                      child: const Text("Password",
                        style: TextStyle(
                          color: Color.fromARGB(255, 216, 202, 208),
                          fontWeight: FontWeight.bold
                        ),
                      ),
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
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox (
                      width: 300,
                      child: TextButton(
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
                                    MaterialStatePropertyAll(Color.fromARGB(255, 216, 202, 208)),
                                foregroundColor:
                                    MaterialStatePropertyAll(Color.fromARGB(255, 72, 35, 71)),
                                minimumSize: MaterialStatePropertyAll(Size(
                                    150 /*MediaQuery.of(context).size.width / 2*/,
                                    40)),
                                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(5))
                                ))),
                            child: const Text(
                              "Login",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                        child: Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()));
                          },
                          style:  const ButtonStyle(
                              overlayColor:
                                  const MaterialStatePropertyAll(Colors.yellow),
                              foregroundColor:
                                  const MaterialStatePropertyAll(Colors.white),
                              minimumSize: const MaterialStatePropertyAll(Size(
                                  150 /*MediaQuery.of(context).size.width / 2*/,
                                  40)),
                               ),
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        TextButton(
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
                          style:  const ButtonStyle(
                              overlayColor:
                                  const MaterialStatePropertyAll(Colors.yellow),
                              foregroundColor:
                                  const MaterialStatePropertyAll(Colors.white),
                              minimumSize: const MaterialStatePropertyAll(Size(
                                  150 /*MediaQuery.of(context).size.width / 2*/,
                                  40)),
                              ),
                          child: const Text(
                            "Login with Mobile",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )),
                     
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
