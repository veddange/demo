import "package:demo/navigation%20drawer/navigation_drawer.dart";
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
        ),
        drawer: NavState(index: 8),
        body: const SingleChildScrollView (
          child: Column(
            children: [
             
            ],
          ),
        ),
      ),
    );
  }
}
