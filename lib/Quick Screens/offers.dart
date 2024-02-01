import 'package:flutter/material.dart';

class Offers extends StatefulWidget {
  const Offers({super.key});

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Offers",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Offers"),
          leading: BackButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) =>  const ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                          Text("brand_name"),
                          Text("coupon_code")
                        ],)
                      )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
