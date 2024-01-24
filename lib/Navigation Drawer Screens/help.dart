import "package:demo/Navigation%20Drawer%20Screens/navigation%20drawer/navigation_drawer.dart";
import "package:flutter/material.dart";

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => HelpView();
}

class HelpView extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Help",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Help"),
        ),
        drawer: NavState(index: 6),
        body: Center(
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListView(
                children: [
                  ListTile(
                    title: const Text("Manage Profile"),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text("Security"),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text("Terms & Conditions"),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text("Chat with us"),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text("Version"),
                    onTap: () {},
                  )
                ],
              )),
        ),
      ),
    );
  }
}
