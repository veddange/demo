import "package:demo/Screens/about_us.dart";
import "package:demo/Screens/profileview.dart";
import "package:demo/main.dart";
import "package:flutter/material.dart";

class NavState extends StatefulWidget {
  const NavState({super.key});

  @override
  NavigationDrawe createState() => NavigationDrawe();
}

// ignore: must_be_immutable
class NavigationDrawe extends State<NavState> {
  int index = 0;
  // NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        surfaceTintColor: Colors.black,
        backgroundColor: Colors.lightGreen,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[buildHearder(context), buildMenuItems(context)],
          ),
        ),
      );

  Widget buildHearder(BuildContext context) => Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top + 50,
        ),
      );
  Widget buildMenuItems(BuildContext context) => Column(
        children: [
          ListTile(
            hoverColor: Colors.brown,
            leading: const Icon(Icons.home_outlined),
            title: const Text("Home"),
            onTap: () {
              setState(() {
                index = 0;
              });
            },
            selected: index == 0,
            selectedTileColor: Colors.orange,
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Profile"),
            onTap: () {
              setState(() {
                index = 1;
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Profile()));
              });
            },
            selected: index == 1,
            selectedTileColor: Colors.orange,
          ),
          ListTile(
              leading: const Icon(Icons.dock_outlined),
              title: const Text("To Do List"),
              onTap: () {
                setState(() {
                  index = 2;
                });
              },
              selected: index == 2,
              selectedTileColor: Colors.orange),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text("Notification"),
            onTap: () {
              setState(() {
                index = 3;
                Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const MyApp()));
              });
            },
            selected: index == 3,
            selectedTileColor: Colors.orange,
          ),
          ListTile(
              leading: const Icon(Icons.privacy_tip),
              title: const Text("Privacy Policy"),
              onTap: () {
                setState(() {
                  index = 4;
                });
              },
              selected: index == 4,
              selectedTileColor: Colors.orange),
          ListTile(
              leading: const Icon(Icons.feedback),
              title: const Text("Feedback"),
              onTap: () {
                setState(() {
                  index = 5;
                });
              },
              selected: index == 5,
              selectedTileColor: Colors.orange),
          ListTile(
              leading: const Icon(Icons.help),
              title: const Text("Help"),
              onTap: () {
                setState(() {
                  index = 6;
                });
              },
              selected: index == 6,
              selectedTileColor: Colors.orange),
          ListTile(
              leading: const Icon(Icons.question_answer),
              title: const Text("FAQ"),
              onTap: () {
                setState(() {
                  index = 7;
                });
              },
              selected: index == 7,
              selectedTileColor: Colors.orange),
          ListTile(
              leading: const Icon(Icons.info),
              title: const Text("About Us"),
              onTap: () {
                setState(() {
                  index = 8;
                  Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const AboutUs()));
                });
              },
              selected: index == 8,
              selectedTileColor: Colors.orange),
          SizedBox(
            height: MediaQuery.of(context).size.height / 3 + 90,
          ),
          OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                  fixedSize: MaterialStatePropertyAll(
                      Size.fromWidth(MediaQuery.of(context).size.width - 120)),
                  backgroundColor: const MaterialStatePropertyAll(Colors.white),
                  overlayColor: const MaterialStatePropertyAll(Colors.blue),
                  foregroundColor: const MaterialStatePropertyAll(Colors.blue),
                  side: const MaterialStatePropertyAll(
                      BorderSide(color: Colors.blue))),
              child: const Text("Logout")),
          const SizedBox(
            height: 10,
          )
        ],
      );
}
