import "package:demo/navigation%20drawer/navigation_drawer.dart";
import "package:flutter/material.dart";

class FeedBack extends StatefulWidget {
  const FeedBack({super.key});

  @override
  FeedbackView createState() => FeedbackView();
}

class FeedbackView extends State<FeedBack> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Feedback",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Feedback"),
        ),
      drawer: NavState(index: 5),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 300,
                  child: Text("Name",
                  textAlign: TextAlign.left,
                ),
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter yout name"
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 300,
                  child: Text("Email-Id",
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter your Email-Id"
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 300,
                  child: Text("Message",
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter your message here..."
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 300,
                  child: OutlinedButton(
                    onPressed: null , 
                    style: ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(Colors.blueAccent),
                      side: MaterialStatePropertyAll(BorderSide(
                        color: Colors.blueAccent
                      ))
                    ),
                    child: Text("Submit")
                  )
                ),
            ],
          ),),
      ),
      ),
    );
  }
}
