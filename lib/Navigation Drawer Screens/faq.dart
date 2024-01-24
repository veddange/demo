import "package:demo/Navigation%20Drawer%20Screens/navigation%20drawer/navigation_drawer.dart";
import "package:flutter/material.dart";

class FAQ extends StatefulWidget {
  const FAQ({super.key});

  @override
  State<FAQ> createState() => FAQView();
}

class FAQView extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Frequently Asked Questions",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("FAQ"),
        ),
        drawer: NavState(index: 7),
        body:  Center(
          child: Padding(
            padding:  const EdgeInsets.all(15.0),
            child: ListView (
              children: const [
                ListTile(
                  title: Text("What is this app about?"),
                  subtitle: Text("This is simply authentication app, which is mainly develop to implent concet of authenticate system."),
                ),
                ListTile(
                  title: Text("How to use?"),
                  subtitle: Text("You can simply install in your device, as we provide functionality regarding guide once you open application first time."),
                ),
                ListTile(
                  title: Text("Can I access my profile anytime?"),
                  subtitle: Text("Yes, we are using one of best services to provide go experiance to our user."),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}