import 'package:flutter/material.dart';

class Grocery extends StatefulWidget {
  const Grocery({super.key});

  @override
  State<Grocery> createState() => _GroceryState();
}

class _GroceryState extends State<Grocery> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Grocery",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Grocery"),
          leading: BackButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          backgroundColor: Colors.blue.shade300,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: Image.asset(
                    "assets/whiteSlide.png",
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 360,
                  color: Colors.amber.shade300,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  color: Colors.white,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.collections)),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("Text")
                              ],
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  color: Colors.white,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.collections)),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("Text")
                              ],
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  color: Colors.white,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.collections)),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("Text")
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                color: Colors.white,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.collections)),
                              ),
                              const SizedBox(
                                  height: 5,
                                ),
                                const Text("Text")
                            ],
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                color: Colors.white,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.collections)),
                              ),
                              const SizedBox(
                                  height: 5,
                                ),
                                const Text("Text")
                            ],
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                color: Colors.white,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.collections)),
                              ),
                              const SizedBox(
                                  height: 5,
                                ),
                                const Text("Text")
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                color: Colors.white,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.collections)),
                              ),
                              const SizedBox(
                                  height: 5,
                                ),
                                const Text("Text")
                            ],
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                color: Colors.white,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.collections)),
                              ),
                              const SizedBox(
                                  height: 5,
                                ),
                                const Text("Text")
                            ],
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                color: Colors.white,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.collections)),
                              ),
                              const SizedBox(
                                  height: 5,
                                ),
                                const Text("Text")
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 180,
                  color: Colors.grey.shade500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 130,
                                width: 108,
                                color: Colors.white,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.collections)),
                              ),
                              const SizedBox(
                                  height: 5,
                                ),
                                const Text("Text")
                            ],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 130,
                                width: 108,
                                color: Colors.white,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.collections)),
                              ),
                              const SizedBox(
                                  height: 5,
                                ),
                                const Text("Text")
                            ],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 130,
                                width: 108,
                                color: Colors.white,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.collections)),
                              ),
                              const SizedBox(
                                  height: 5,
                                ),
                                const Text("Text")
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 140,
                    color: Colors.blue.shade300,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Order Again",
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 180,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "See all",
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(
                                  width: 1,
                                ),
                                IconButton(
                                    color: Colors.white,
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.arrow_circle_right)),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.white,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 80,
                                      color: Colors.grey.shade200,
                                      child: Column(
                                        children: [
                                          IconButton(
                                            onPressed: () { }, 
                                            icon: const Icon(Icons.school_sharp)
                                          ),
                                          const Text("Text")
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      height: 80,
                                      width: 80,
                                      color: Colors.grey.shade200,
                                      child: Column(
                                        children: [
                                          IconButton(
                                            onPressed: () { }, 
                                            icon: const Icon(Icons.school_sharp)
                                          ),
                                          const Text("Text")
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      height: 80,
                                      width: 80,
                                      color: Colors.grey.shade200,
                                      child: Column(
                                        children: [
                                          IconButton(
                                            onPressed: () { }, 
                                            icon: const Icon(Icons.school_sharp)
                                          ),
                                          const Text("Text")
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      height: 80,
                                      width: 80,
                                      color: Colors.grey.shade200,
                                      child: Column(
                                        children: [
                                          IconButton(
                                            onPressed: () { }, 
                                            icon: const Icon(Icons.school_sharp)
                                          ),
                                          const Text("Text")
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      height: 80,
                                      width: 80,
                                      color: Colors.grey.shade200,
                                      child: Column(
                                        children: [
                                          IconButton(
                                            onPressed: () { }, 
                                            icon: const Icon(Icons.school_sharp)
                                          ),
                                          const Text("Text")
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      height: 80,
                                      width: 80,
                                      color: Colors.grey.shade200,
                                      child: Column(
                                        children: [
                                          IconButton(
                                            onPressed: () { }, 
                                            icon: const Icon(Icons.school_sharp)
                                          ),
                                          const Text("Text")
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      height: 80,
                                      width: 80,
                                      color: Colors.grey.shade200,
                                      child: Column(
                                        children: [
                                          IconButton(
                                            onPressed: () { }, 
                                            icon: const Icon(Icons.school_sharp)
                                          ),
                                          const Text("Text")
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      height: 80,
                                      width: 80,
                                      color: Colors.grey.shade200,
                                      child: Column(
                                        children: [
                                          IconButton(
                                            onPressed: () { }, 
                                            icon: const Icon(Icons.school_sharp)
                                          ),
                                          const Text("Text")
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
