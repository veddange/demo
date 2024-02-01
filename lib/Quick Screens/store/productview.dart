import 'package:flutter/material.dart';

class ProductView extends StatefulWidget {
  const ProductView({super.key});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Product",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Product"),
          leading: BackButton(onPressed: () {
            Navigator.of(context).pop();
          }),
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: 15,
                      itemBuilder: (context, index) => ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset("assets/milk.png"),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Product Name",
                                             style: TextStyle(
                                              fontWeight: FontWeight.bold
                                             ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "This is a description of \nproduct.",
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(Icons.star,
                                                    color: Color.fromARGB(255, 241, 218, 7),
                                                  ),
                                                  Text("4.5",
                                                  style: TextStyle(
                                                    color: Color.fromARGB(255, 241, 218, 4)
                                                  ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text("Product Price",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14.0,
                                              ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )))
            ],
          ),
        ),
      ),
    );
  }
}
