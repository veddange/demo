import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Product Details",
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Product Details"),
            leading: BackButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/nature.jpg",
                        width: 150,
                        height: 200,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Product Name",
                              textAlign: TextAlign.left,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              children: [
                                Text(
                                  "Product Price",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star,
                                    color: Colors.yellow,
                                    ), 
                                    Text("4.5",
                                    style: TextStyle(
                                      color: Colors.yellow
                                    ),
                                    )],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              children: [
                                Text(
                                  "Qty:",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text("3")
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              width: 200,
                              child: TextButton(
                                onPressed: () {}, 
                                style: const ButtonStyle(
                                  foregroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 218, 202, 216)),
                                  backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 72, 35, 71)),
                                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero
                                  ))
                                ),
                                child: const Text("ADD TO CART",
                                )
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Text("This is the description of product, This is the description of product, This is the description of product, This is the description of product, This is the description of product, This is the description of product, This is the description of product, This is the description of product, This is the description of product",
                    textAlign: TextAlign.left,
                  ),

                  const Spacer()
                ],
              ),
            ),
          ),
        ));
  }
}
