import "package:flutter/material.dart";

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  ProfileView createState() => ProfileView();
}

class ProfileView extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Profile",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Profile"),
          leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
    );
  }
}
