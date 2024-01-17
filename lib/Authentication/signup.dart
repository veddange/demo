import 'package:demo/Authentication/login.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SignUp extends StatelessWidget {
  TextEditingController txtFirstName = TextEditingController();
  TextEditingController txtLastName = TextEditingController();
  TextEditingController txtEmailId = TextEditingController();
  TextEditingController txtMobileNo = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfirmPassword = TextEditingController();
  SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SignUp",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          // title: const Text("SignUp"),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          leading: BackButton(
            color: Colors.black,
            onPressed: () => Navigator.of(context).pop(),
          ),
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
                  "SignUp",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: txtFirstName,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    hintText: "Enter First Name",
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: txtLastName,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    hintText: "Enter Last Name",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: txtMobileNo,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    hintText: "Enter Email-Id",
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: txtMobileNo,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    hintText: "Enter Mobile Number",
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: txtPassword,
                  style: const TextStyle(color: Colors.white),
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter Password",
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: txtConfirmPassword,
                  style: const TextStyle(color: Colors.white),
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter Confirm Password",
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 300,
                child: OutlinedButton(
                    onPressed: () {
                      if (txtPassword.text == txtConfirmPassword.text &&
                          txtPassword.text.isNotEmpty &&
                          txtConfirmPassword.text.isNotEmpty) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const LoginState()));
                      }
                    },
                    style: const ButtonStyle(
                        foregroundColor: MaterialStatePropertyAll(Colors.blue),
                        side: MaterialStatePropertyAll(BorderSide(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 2.0,
                        ))),
                    child: const Text("Sign Up")),
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}


// ColorScheme.fromSeed(seedColor: Colors.deepPurple)