import "package:demo/navigation%20drawer/navigation_drawer.dart";
import "package:flutter/material.dart";

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  ProfileView createState() => ProfileView();
}

class ProfileView extends State<Profile> {
  TextEditingController txtFname = TextEditingController();
  TextEditingController txtLname = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtMobile = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "User Profile",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Profile"),
        ),
        drawer: NavState(
          index: 1,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  width: 300,
                  child: Text(
                    "First Name",
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                    controller: txtFname,
                    decoration:
                        const InputDecoration(hintText: "Enter First Name"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  width: 300,
                  child: Text(
                    "Last Name",
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                    controller: txtLname,
                    decoration:
                        const InputDecoration(hintText: "Enter Last Name"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  width: 300,
                  child: Text(
                    "Email-Id",
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                    controller: txtEmail,
                    decoration: const InputDecoration(hintText: "Enter Email-Id"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  width: 300,
                  child: Text(
                    "Mobile Number",
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                    controller: txtMobile,
                    decoration:
                        const InputDecoration(hintText: "Enter Mobile Nmber"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  width: 300,
                  child: Text(
                    "Password",
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                    controller: txtPassword,
                    obscureText: true,
                    decoration: const InputDecoration(hintText: "Enter Password"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  width: 300,
                  child: Text(
                    "Confirm Password",
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                    controller: txtConfirmPassword,
                    obscureText: true,
                    decoration:
                        const InputDecoration(hintText: "Enter Confirm Password"),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/3 - 100,
                ),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: OutlinedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.blueAccent),
                          side: MaterialStatePropertyAll(BorderSide(
                              color: Colors.blueAccent,
                              style: BorderStyle.solid,
                              width: 1.0))),
                      child: const Text("Update")),
                ),
                const SizedBox(
                  height: 20,
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}