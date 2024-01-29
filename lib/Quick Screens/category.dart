import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Select Category",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Select Category"),
          backgroundColor: Colors.blue.shade300,
          leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Colors.white,
        body: Center(
            child: ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    color: Colors.green.shade200,
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          IgnorePointer(
                            child: IconButton(
                                iconSize: 60,
                                color: Colors.black,
                                onPressed: () {
                                  debugPrint("Pressed");
                                },
                                icon: const Icon(Icons.laptop_outlined)),
                          ),
                          IgnorePointer(
                            child: TextButton(
                                onPressed: () {
                                  debugPrint("Pressed");
                                },
                                child: const Text(
                                  "Electronics",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 72, 35, 67)),
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.grey.shade300,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    color: Colors.green.shade200,
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          IgnorePointer(
                            child: IconButton(
                                iconSize: 60,
                                color: Colors.black,
                                onPressed: () {
                                  debugPrint("Pressed");
                                },
                                icon: const Icon(Icons.man)),
                          ),
                          IgnorePointer(
                            child: TextButton(
                                onPressed: () {
                                  debugPrint("Pressed");
                                },
                                child: const Text(
                                  "Men's Clothing",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 72, 35, 67)),
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.grey.shade300,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    color: Colors.green.shade200,
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          IgnorePointer(
                            child: IconButton(
                                iconSize: 60,
                                color: Colors.black,
                                onPressed: () {
                                  debugPrint("Pressed");
                                },
                                icon: const Icon(Icons.laptop)),
                          ),
                          IgnorePointer(
                            child: TextButton(
                                onPressed: () {
                                  debugPrint("Pressed");
                                },
                                child: const Text(
                                  "Jewellary",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 72, 35, 67)),
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.grey.shade300,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    color: Colors.green.shade200,
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          IgnorePointer(
                            child: IconButton(
                                iconSize: 60,
                                color: Colors.black,
                                onPressed: () {
                                  debugPrint("Pressed");
                                },
                                icon: const Icon(Icons.woman)),
                          ),
                          IgnorePointer(
                            child: TextButton(
                                onPressed: () {
                                  debugPrint("Pressed");
                                },
                                child: const Text(
                                  "Women's Clothing",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 72, 35, 67)),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.grey.shade300,
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
