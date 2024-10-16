// ignore_for_file: unnecessary_const

import 'package:demo/Authentication/mobile_number.dart';
import 'package:demo/Authentication/signup.dart';
import 'package:demo/Helper/utility_helper.dart';
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
            // leading: BackButton(
            //   color: Colors.black,
            //   onPressed: () {
            //     Navigator.of(context).pop();
            //   },
            // ),
          ),
          backgroundColor: const Color.fromARGB(255, 72, 35, 71),
          body: SingleChildScrollView(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 40,
                      ),
                      Image.asset(
                        "assets/online-shopping.png",
                        width: 75,
                        height: 75,
                      ),
                      const SizedBox(
                        height: 10,
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
                      const SizedBox(
                        width: 300,
                        child: const Text(
                          "Email",
                          style: TextStyle(
                              color: Color.fromARGB(255, 216, 202, 208),
                              fontWeight: FontWeight.bold),
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
                        child: const Text(
                          "Password",
                          style: TextStyle(
                              color: Color.fromARGB(255, 216, 202, 208),
                              fontWeight: FontWeight.bold),
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
                      SizedBox(
                        width: 300,
                        child: TextButton(
                          onPressed: () async {
                            if (txtName.text.isNotEmpty &&
                                txtPass.text.isNotEmpty) {
                              debugPrint(txtPass.text);
                              // var pref = await SharedPreferences.getInstance();
                              Utility.setValues(
                                  key: 'username',
                                  value: txtName.text.toString());
                              Utility.setValues(
                                  key: 'password',
                                  value: txtPass.text.toString());
            
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MyApp()));
                            }
                          },
                          style: const ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                  Color.fromARGB(255, 216, 202, 208)),
                              foregroundColor: WidgetStatePropertyAll(
                                  Color.fromARGB(255, 72, 35, 71)),
                              minimumSize: WidgetStatePropertyAll(Size(
                                  150 /*MediaQuery.of(context).size.width / 2*/,
                                  40)),
                              shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))))),
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
                            style: const ButtonStyle(
                              foregroundColor:
                                  const WidgetStatePropertyAll(Colors.white),
                              minimumSize: const WidgetStatePropertyAll(Size(
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
                                      builder: (context) => const MobileLogin()));
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
                            style: const ButtonStyle(
                              foregroundColor:
                                  const WidgetStatePropertyAll(Colors.white),
                              minimumSize: const WidgetStatePropertyAll(Size(
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
          ),
        ));
  }
}

void click() {
  debugPrint("Tapped");
}
