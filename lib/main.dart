import 'package:flutter/material.dart';

import 'views/products.dart';

void main() {
  runApp(const MyStore());
}

class MyStore extends StatelessWidget {
  const MyStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Insta Store",
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text("Insta Store",
          style: TextStyle(
    color: Colors.white,
    ),
        ),

      ),
    body: const ProductsView(),
      )
    );
  }
}



