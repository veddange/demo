import 'package:flutter/material.dart';

// ignore: must_be_immutable

class ImgState extends StatefulWidget {
  const ImgState({super.key});

  @override
  Iamg createState() => Iamg();
}

// ignore: must_be_immutable
class Iamg extends State<ImgState> {
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
      title: "Image",
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
              child: Image.asset(
            "assets/lal_bagcha_raja.jpg",
            height: 400,
            width: 500,
          ))),
    );
  }
}
