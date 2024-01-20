import "package:flutter/material.dart";

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  AboutUsView createState() => AboutUsView();
}

class AboutUsView extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "About Us",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("About Us"),
          leading:  BackButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            color: Colors.black),
        ),
      ),
    );
  }
}
