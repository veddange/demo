import 'package:demo/Navigation%20Drawer%20Screens/navigation%20drawer/navigation_drawer.dart';
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
      home: const MyHomePage(title: 'Home'),
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
      backgroundColor: const Color.fromARGB(255, 255, 236, 250),
      drawer: NavState(
        index: 0,
      ),
      body: Center(
        child: SingleChildScrollView (
          child: Column(
            children: <Widget>[
              const Text(""),
              SingleChildScrollView (
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        IconButton(
                            iconSize: 50,
                            onPressed: () {},
                            color: const Color.fromARGB(255, 146, 119, 197),
                            icon: const Icon(Icons.category)),
                        const Text("Category")
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            iconSize: 50,
                            onPressed: () {},
                            color: const Color.fromARGB(255, 146, 119, 197),
                            icon: const Icon(Icons.store)),
                        const Text("Store")
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            iconSize: 50,
                            onPressed: () {},
                            color: const Color.fromARGB(255, 146, 119, 197),
                            icon: const Icon(Icons.shopping_bag)),
                        const Text("Grocery")
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            iconSize: 50,
                            onPressed: () {},
                            color: const Color.fromARGB(255, 146, 119, 197),
                            icon: const Icon(Icons.mobile_screen_share)),
                        const Text("Mobile")
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            iconSize: 50,
                            onPressed: () {},
                            color: const Color.fromARGB(255, 146, 119, 197),
                            icon: const Icon(Icons.account_circle)),
                        const Text("Login")
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 400,
                // height: 250,
                child: Image.asset(
                  'assets/whiteSlide.png',
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView (
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: Colors.black,
                            width: 2.0
                          )
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                IconButton(
                                    iconSize: 60,
                                    color: const Color.fromARGB(255, 146, 119, 197),
                                    onPressed: () {},
                                    icon: const Icon(Icons.collections_sharp)),
                                const SizedBox(
                                  width: 30,
                                ),
                                IconButton(
                                    iconSize: 60,
                                    color: const Color.fromARGB(255, 146, 119, 197),
                                    onPressed: () {},
                                    icon: const Icon(Icons.add_location_sharp)),
                                const SizedBox(
                                  width: 30,
                                ),
                                IconButton(
                                    iconSize: 60,
                                    color: const Color.fromARGB(255, 146, 119, 197),
                                    onPressed: () {},
                                    icon: const Icon(Icons.local_airport)),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                IconButton(
                                    iconSize: 60,
                                    color: const Color.fromARGB(255, 146, 119, 197),
                                    onPressed: () {},
                                    icon: const Icon(Icons.health_and_safety_sharp)),
                                const SizedBox(
                                  width: 30,
                                ),
                                IconButton(
                                    iconSize: 60,
                                    color: const Color.fromARGB(255, 146, 119, 197),
                                    onPressed: () {},
                                    icon: const Icon(Icons.radio)),
                                const SizedBox(
                                  width: 30,
                                ),
                                IconButton(
                                    iconSize: 60,
                                    color: const Color.fromARGB(255, 146, 119, 197),
                                    onPressed: () {},
                                    icon: const Icon(Icons.music_note)),
                                const SizedBox(
                                  width: 30,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                                
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: Colors.black,
                            width: 2.0
                          )
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                IconButton(
                                    iconSize: 60,
                                    color: const Color.fromARGB(255, 146, 119, 197),
                                    onPressed: () {},
                                    icon: const Icon(Icons.featured_play_list_rounded)),
                                const SizedBox(
                                  width: 30,
                                ),
                                IconButton(
                                    iconSize: 60,
                                    color: const Color.fromARGB(255, 146, 119, 197),
                                    onPressed: () {},
                                    icon: const Icon(Icons.ramen_dining_sharp)),
                                const SizedBox(
                                  width: 30,
                                ),
                                IconButton(
                                    iconSize: 60,
                                    color: const Color.fromARGB(255, 146, 119, 197),
                                    onPressed: () {},
                                    icon: const Icon(Icons.yard_rounded)),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                IconButton(
                                    iconSize: 60,
                                    color: const Color.fromARGB(255, 146, 119, 197),
                                    onPressed: () {},
                                    icon: const Icon(Icons.data_exploration_rounded)),
                                const SizedBox(
                                  width: 30,
                                ),
                                IconButton(
                                    iconSize: 60,
                                    color: const Color.fromARGB(255, 146, 119, 197),
                                    onPressed: () {},
                                    icon: const Icon(Icons.gpp_good_rounded)),
                                const SizedBox(
                                  width: 30,
                                ),
                                IconButton(
                                    iconSize: 60,
                                    color: const Color.fromARGB(255, 146, 119, 197),
                                    onPressed: () {},
                                    icon: const Icon(Icons.headphones_sharp)),
                                const SizedBox(
                                  width: 30,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                IconButton(
                                    iconSize: 60,
                                    color: const Color.fromARGB(255, 146, 119, 197),
                                    onPressed: () {},
                                    icon: const Icon(Icons.kayaking_outlined)),
                                const SizedBox(
                                  width: 30,
                                ),
                                IconButton(
                                    iconSize: 60,
                                    color: const Color.fromARGB(255, 146, 119, 197),
                                    onPressed: () {},
                                    icon: const Icon(Icons.language_outlined)),
                                const SizedBox(
                                  width: 30,
                                ),
                                IconButton(
                                    iconSize: 60,
                                    color: const Color.fromARGB(255, 146, 119, 197),
                                    onPressed: () {},
                                    icon: const Icon(Icons.folder_zip)),
                                const SizedBox(
                                  width: 30,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              // OutlinedButton(
              //     style: const ButtonStyle(
              //       overlayColor: MaterialStatePropertyAll(Colors.amberAccent),
              //     ),
              //     onPressed: () {
              //       Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //               builder: (context) => const LoginState()));
              //     },
              //     child: const Text("Navigation")),
              // const Spacer()
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
