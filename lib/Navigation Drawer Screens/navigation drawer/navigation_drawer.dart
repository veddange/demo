import 'dart:async';

import 'package:demo/Authentication/mobile_number.dart';
import 'package:demo/Helper/utility_helper.dart';
import 'package:demo/Navigation%20Drawer%20Screens/about_us.dart';
import 'package:demo/Navigation%20Drawer%20Screens/faq.dart';
import 'package:demo/Navigation%20Drawer%20Screens/feedback.dart';
import 'package:demo/Navigation%20Drawer%20Screens/help.dart';
import 'package:demo/Navigation%20Drawer%20Screens/notification.dart';
import 'package:demo/Navigation%20Drawer%20Screens/privacypolicy.dart';
import 'package:demo/Navigation%20Drawer%20Screens/profileview.dart';
import 'package:demo/Navigation%20Drawer%20Screens/todolist.dart';
import "package:demo/main.dart";
import "package:flutter/material.dart";

// ignore: must_be_immutable
class NavState extends StatefulWidget {
  NavState({super.key, required this.index});
  int index;
  bool? isTab = false;
  bool isValue = false;
  String? username;

  @override
  State<NavState> createState() => NavigationDrawe();
}

class NavigationDrawe extends State<NavState> {
  // int widget.index = .widget.index;
  // NavigationDrawer({Key? key}) : super(key: key);
  @override
  void initState() {
    if (mounted) {
      setDreaver();
    }
    // WidgetsBinding.instance.addTimingsCallback((_) async {

    // var timer = Timer.periodic(const Duration(seconds: 5), (Timer t) {});
    // {
    //   if (mounted) {

    //     timer.cancel();
    //   } else {
    //     timer.cancel();
    //   }
    // }
    // });
    super.initState();
  }

  Future<void> setDreaver() async {
    widget.username = await Utility.getValues(key: "username");
    setState(() {
      if (MediaQuery.of(context).size.height > 1000) {
        widget.isTab = true;
      } else {
        widget.isTab = false;
      }
    });
  }

  void remove() async {
    // var keyUser =;
    // var keyPassword = await Utility.removeValue("password");

    // if (keyUser.toString().isEmpty && keyPassword.toString().isEmpty) {
    //   widget.isEmpty = true;
    // }
    // widget.isEmpty = false;
  }

  Future<void> _checkKeyAndNavigate() async {
    var username = await Utility.removeValue("username");
    var password = await Utility.removeValue("password");
    bool isFalse = false;
    if (username == null && password == null) {
      isFalse = true;
    }
    // Check if the widget is still mounted
    if (!mounted) return;

    if (isFalse) {
      // Navigate to Second Screen if the key does not exist
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MobileLogin()),
      );
    } else {
      // Optionally show a message if the key exists
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Key exists!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) => Drawer(
        surfaceTintColor: Colors.black,
        backgroundColor: Colors.yellow.shade200,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[buildHearder(context), buildMenuItems(context)],
          ),
        ),
      );

  Widget buildHearder(BuildContext context) => Container(
        padding: const EdgeInsets.only(
          top: 40,
        ),
      );
  Widget buildMenuItems(BuildContext context) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  // width: 50,
                  child: Icon(
                    Icons.account_circle_outlined,
                    size: 50,
                    color: Colors.blue.shade500,
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: TextButton(
                      style: ButtonStyle(
                          foregroundColor:
                              WidgetStatePropertyAll(Colors.blue.shade500),
                          alignment: Alignment.centerLeft),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const MobileLogin()));
                      },
                      child: Text(
                        widget.username ?? "Login",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      )),
                ),
                const Spacer()
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text("Home"),
            onTap: () {
              setState(() {
                widget.index = 0;
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const MyApp()));
              });
            },
            selected: widget.index == 0,
            selectedColor: Colors.white,
            selectedTileColor: Colors.indigo.shade500,
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Profile"),
            onTap: () {
              setState(() {
                widget.index = 1;
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Profile()));
              });
            },
            selected: widget.index == 1,
            selectedColor: Colors.white,
            selectedTileColor: Colors.indigo.shade500,
          ),
          ListTile(
              leading: const Icon(Icons.dock_outlined),
              title: const Text("To Do List"),
              onTap: () {
                setState(() {
                  widget.index = 2;
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const TodoList()));
                });
              },
              selected: widget.index == 2,
              selectedColor: Colors.white,
              selectedTileColor: Colors.indigo.shade500),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text("Notification"),
            onTap: () {
              setState(() {
                widget.index = 3;
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CustomNotification()));
              });
            },
            selected: widget.index == 3,
            selectedColor: Colors.white,
            selectedTileColor: Colors.indigo.shade500,
          ),
          ListTile(
              leading: const Icon(Icons.privacy_tip),
              title: const Text("Privacy Policy"),
              onTap: () {
                setState(() {
                  widget.index = 4;
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const PrivacyPolicy()));
                });
              },
              selected: widget.index == 4,
              selectedColor: Colors.white,
              selectedTileColor: Colors.indigo.shade500),
          ListTile(
              leading: const Icon(Icons.feedback),
              title: const Text("Feedback"),
              onTap: () {
                setState(() {
                  widget.index = 5;
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const FeedBack()));
                });
              },
              selected: widget.index == 5,
              selectedColor: Colors.white,
              selectedTileColor: Colors.indigo.shade500),
          ListTile(
              leading: const Icon(Icons.help),
              title: const Text("Help"),
              onTap: () {
                setState(() {
                  widget.index = 6;
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Help()));
                });
              },
              selected: widget.index == 6,
              selectedColor: Colors.white,
              selectedTileColor: Colors.indigo.shade500),
          ListTile(
              leading: const Icon(Icons.question_answer),
              title: const Text("FAQ"),
              onTap: () {
                setState(() {
                  widget.index = 7;
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const FAQ()));
                });
              },
              selected: widget.index == 7,
              selectedColor: Colors.white,
              selectedTileColor: Colors.indigo.shade500),
          ListTile(
              leading: const Icon(Icons.info),
              title: const Text("About Us"),
              onTap: () {
                setState(() {
                  widget.index = 8;
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const AboutUs()));
                });
              },
              selected: widget.index == 8,
              selectedColor: Colors.white,
              selectedTileColor: Colors.indigo.shade500),
          SizedBox(
            height: widget.isTab ?? false
                ? MediaQuery.of(context).size.height -
                    MediaQuery.of(context).size.height / 4 * 2
                : MediaQuery.of(context).size.height / 4,
          ),
          ElevatedButton(
              onPressed: _checkKeyAndNavigate,
              style: ButtonStyle(
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0))),
                  fixedSize: const WidgetStatePropertyAll(Size.fromWidth(280)),
                  backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  overlayColor: const WidgetStatePropertyAll(Colors.blue),
                  foregroundColor: const WidgetStatePropertyAll(Colors.blue),
                  side: const WidgetStatePropertyAll(
                      BorderSide(color: Colors.blue))),
              child: const Text("Logout")),
          const SizedBox(
            height: 10,
          )
        ],
      );
}
