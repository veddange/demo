import "package:demo/Navigation%20Drawer%20Screens/navigation%20drawer/navigation_drawer.dart";
import "package:flutter/material.dart";

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => TodoListView();
}

class TodoListView extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "To Do List",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("To Do List"),
        ),
        drawer: NavState(index: 2),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const SizedBox(
                  width: 300,
                  child: Text(
                    "ACTIVITY:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                const SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(hintText: "Enter Activity"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 300,
                  child: OutlinedButton(
                   onPressed: () {},
                   style: const ButtonStyle(
                   side: WidgetStatePropertyAll(BorderSide(
                      color: Colors.blueAccent,
                    ))
                   ),
                   child: const Text("Submit")
                   ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
