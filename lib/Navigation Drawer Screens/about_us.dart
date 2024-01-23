import 'package:demo/Navigation%20Drawer%20Screens/navigation%20drawer/navigation_drawer.dart';
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
        body:  SingleChildScrollView (
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                 Image.asset("assets/mobile.png",
                  height: 150,
                 ),
                 const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ontrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
                 textAlign: TextAlign.justify,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
