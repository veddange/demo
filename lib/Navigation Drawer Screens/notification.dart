import "package:demo/Navigation%20Drawer%20Screens/navigation%20drawer/navigation_drawer.dart";
import "package:flutter/material.dart";

class CustomNotification extends StatefulWidget {
  const CustomNotification({super.key});

  @override
  State<CustomNotification> createState() => CustomNotificationView();
}

class CustomNotificationView extends State<CustomNotification> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Notification",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Notification"),
        ),
        drawer: NavState(index: 3),
        body: const Center(
          child: Padding(
            padding:  EdgeInsets.all(15.0),
            child: Column(
              children: [
                 Text("Notification")
              ],
            ),
          ),
        ),
      ),
    );
  }
}