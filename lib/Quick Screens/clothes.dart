import 'package:flutter/material.dart';

class Clothes extends StatefulWidget {
  const Clothes({super.key});

  @override
  State<Clothes> createState() => _ClothesState();
}

class _ClothesState extends State<Clothes> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Select Clothing",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Clothing"),
          leading: BackButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Expanded (
                child: ListView(
                  children: const [
                    ListTile(
                      title: Text("Men's Clothing"),
                      leading: ImageIcon(AssetImage("assets/clothes.png"),
                      size: 100,
                      ),
                    ),
                    ListTile(
                      title: Text("Women's Clothing"),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
