import 'package:flutter/material.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          color: Colors.yellowAccent[100],
            alignment: Alignment.center,
          child: const Text("Breakfast and Diary",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),)
    ),
        Container(
            color: Colors.yellowAccent[200],
            alignment: Alignment.center,
            child: const Text("Fresh Vegetables",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),)
        ),
        Container(
            color: Colors.redAccent[100],
            alignment: Alignment.center,
            child: const Text("Fresh Fruits",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),)
        ),
        Container(
            color: Colors.redAccent[200],
            alignment: Alignment.center,
            child: const Text("Snacks",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),)
        ),
        Container(
            color: Colors.blueAccent[100],
            alignment: Alignment.center,
            child: const Text("Beverages",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),)
        ),
        Container(
            color: Colors.blueAccent[200],
            alignment: Alignment.center,
            child: const Text("Desserts",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),)
        ),
        Container(
            color: Colors.orangeAccent[100],
            alignment: Alignment.center,
            child: const Text("Instant Foods",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),)
        ),
        Container(
            color: Colors.orangeAccent[200],
            alignment: Alignment.center,
            child: const Text("Home Care",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),)
        ),

      ],
    );
  }
}
