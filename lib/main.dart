import 'package:demo/Navigation%20Drawer%20Screens/navigation%20drawer/navigation_drawer.dart';
import 'package:demo/Quick%20Screens/category.dart';
import 'package:demo/Quick%20Screens/clothes.dart';
import 'package:demo/Quick%20Screens/grocery.dart';
import 'package:demo/Quick%20Screens/offers.dart';
import 'package:demo/Quick%20Screens/store/productview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

var isHover = false;
var isSmall = false;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Buykart'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // void _incrementCounter() {
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      backgroundColor: Colors.white,
      drawer: NavState(
        index: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SearchAnchor.bar(
                    barHintText: "Search Product",
                    isFullScreen: true,
                    suggestionsBuilder:
                        (BuildContext context, SearchController controller) {
                      return List<Widget>.generate(5, (index) {
                        return ListTile(
                          titleAlignment: ListTileTitleAlignment.center,
                          title: Text('Initial $index'),
                        );
                      });
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    "Quick Picks",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        IconButton(
                            iconSize: 50,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Category()));
                            },
                            color: const Color.fromARGB(255, 146, 119, 197),
                            icon: const Icon(Icons.dashboard)),
                        const Text("Category")
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        IconButton(
                            iconSize: 50,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const ProductView()));
                            },
                            color: const Color.fromARGB(255, 146, 119, 197),
                            icon: const Icon(Icons.store)),
                        const Text("Store")
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        IconButton(
                            iconSize: 50,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Grocery()));
                            },
                            color: const Color.fromARGB(255, 146, 119, 197),
                            icon: const Icon(Icons.shopping_bag)),
                        const Text("Grocery")
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        IconButton(
                            iconSize: 50,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Offers()));
                            },
                            color: const Color.fromARGB(255, 146, 119, 197),
                            icon: const ImageIcon(
                              AssetImage("assets/offers.png"),
                            )),
                        const Text("Offers")
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        IconButton(
                            iconSize: 50,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const Clothes()));
                            },
                            color: const Color.fromARGB(255, 146, 119, 197),
                            icon: const ImageIcon(
                              AssetImage("assets/clothes.png"),
                            )),
                        const Text("Clothes")
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Image.asset(
                  'assets/sale.png',
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      shape: BoxShape.rectangle,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "You may like this",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 205,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "See all",
                                  style: TextStyle(color: Colors.blue),
                                ),
                                const SizedBox(
                                  width: 1,
                                ),
                                IconButton(
                                    color: Colors.blue,
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.keyboard_arrow_right_sharp)),
                              ],
                            )
                          ],
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 150,
                                      height: 155,
                                      color: Colors.grey.shade100,
                                      child: Column(
                                        children: [
                                          IconButton(
                                              alignment: Alignment.center,
                                              iconSize: 100,
                                              color: const Color.fromARGB(
                                                  255, 146, 119, 197),
                                              onPressed: () {},
                                              icon: const Icon(
                                                  Icons.collections_sharp)),
                                          const Text("Text")
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Container(
                                      width: 150,
                                      height: 155,
                                      color: Colors.grey.shade100,
                                      child: Column(
                                        children: [
                                          IconButton(
                                              alignment: Alignment.center,
                                              iconSize: 100,
                                              color: const Color.fromARGB(
                                                  255, 146, 119, 197),
                                              onPressed: () {},
                                              icon: const Icon(
                                                  Icons.collections_sharp)),
                                          const Text("Text")
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 150,
                                      height: 155,
                                      color: Colors.grey.shade100,
                                      child: Column(
                                        children: [
                                          IconButton(
                                              alignment: Alignment.center,
                                              iconSize: 100,
                                              color: const Color.fromARGB(
                                                  255, 146, 119, 197),
                                              onPressed: () {},
                                              icon: const Icon(
                                                  Icons.collections_sharp)),
                                          const Text("Text")
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Container(
                                      width: 150,
                                      height: 155,
                                      color: Colors.grey.shade100,
                                      child: Column(
                                        children: [
                                          IconButton(
                                              alignment: Alignment.center,
                                              iconSize: 100,
                                              color: const Color.fromARGB(
                                                  255, 146, 119, 197),
                                              onPressed: () {},
                                              icon: const Icon(
                                                  Icons.collections_sharp)),
                                          const Text("Text")
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                    child: Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "Trending",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width - 160,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "See all",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  const SizedBox(
                                    width: 1,
                                  ),
                                  IconButton(
                                      color: Colors.blue,
                                      onPressed: () {},
                                      icon: const Icon(
                                          Icons.keyboard_arrow_right_sharp)),
                                ],
                              )
                            ],
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 8, 0, 3),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 80,
                                          height: 90,
                                          color: Colors.grey.shade100,
                                          child: Column(
                                            children: [
                                              IconButton(
                                                  alignment: Alignment.center,
                                                  iconSize: 50,
                                                  color: const Color.fromARGB(
                                                      255, 146, 119, 197),
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                      Icons.collections_sharp)),
                                              const Text("Text")
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          width: 80,
                                          height: 90,
                                          color: Colors.grey.shade100,
                                          child: Column(
                                            children: [
                                              IconButton(
                                                  alignment: Alignment.center,
                                                  iconSize: 50,
                                                  color: const Color.fromARGB(
                                                      255, 146, 119, 197),
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                      Icons.collections_sharp)),
                                              const Text("Text")
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          width: 80,
                                          height: 90,
                                          color: Colors.grey.shade100,
                                          child: Column(
                                            children: [
                                              IconButton(
                                                  alignment: Alignment.center,
                                                  iconSize: 50,
                                                  color: const Color.fromARGB(
                                                      255, 146, 119, 197),
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                      Icons.collections_sharp)),
                                              const Text("Text")
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          width: 80,
                                          height: 90,
                                          color: Colors.grey.shade100,
                                          child: Column(
                                            children: [
                                              IconButton(
                                                  alignment: Alignment.center,
                                                  iconSize: 50,
                                                  color: const Color.fromARGB(
                                                      255, 146, 119, 197),
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                      Icons.collections_sharp)),
                                              const Text("Text")
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          width: 80,
                                          height: 90,
                                          color: Colors.grey.shade100,
                                          child: Column(
                                            children: [
                                              IconButton(
                                                  alignment: Alignment.center,
                                                  iconSize: 50,
                                                  color: const Color.fromARGB(
                                                      255, 146, 119, 197),
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                      Icons.collections_sharp)),
                                              const Text("Text")
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 8, 0, 5),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 80,
                                        height: 90,
                                        color: Colors.grey.shade100,
                                        child: Column(
                                          children: [
                                            IconButton(
                                                alignment: Alignment.center,
                                                iconSize: 50,
                                                color: const Color.fromARGB(
                                                    255, 146, 119, 197),
                                                onPressed: () {},
                                                icon: const Icon(
                                                    Icons.collections_sharp)),
                                            const Text("Text")
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        width: 80,
                                        height: 90,
                                        color: Colors.grey.shade100,
                                        child: Column(
                                          children: [
                                            IconButton(
                                                alignment: Alignment.center,
                                                iconSize: 50,
                                                color: const Color.fromARGB(
                                                    255, 146, 119, 197),
                                                onPressed: () {},
                                                icon: const Icon(
                                                    Icons.collections_sharp)),
                                            const Text("Text")
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        width: 80,
                                        height: 90,
                                        color: Colors.grey.shade100,
                                        child: Column(
                                          children: [
                                            IconButton(
                                                alignment: Alignment.center,
                                                iconSize: 50,
                                                color: const Color.fromARGB(
                                                    255, 146, 119, 197),
                                                onPressed: () {},
                                                icon: const Icon(
                                                    Icons.collections_sharp)),
                                            const Text("Text")
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        width: 80,
                                        height: 90,
                                        color: Colors.grey.shade100,
                                        child: Column(
                                          children: [
                                            IconButton(
                                                alignment: Alignment.center,
                                                iconSize: 50,
                                                color: const Color.fromARGB(
                                                    255, 146, 119, 197),
                                                onPressed: () {},
                                                icon: const Icon(
                                                    Icons.collections_sharp)),
                                            const Text("Text")
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        width: 80,
                                        height: 90,
                                        color: Colors.grey.shade100,
                                        child: Column(
                                          children: [
                                            IconButton(
                                                alignment: Alignment.center,
                                                iconSize: 50,
                                                color: const Color.fromARGB(
                                                    255, 146, 119, 197),
                                                onPressed: () {},
                                                icon: const Icon(
                                                    Icons.collections_sharp)),
                                            const Text("Text")
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
