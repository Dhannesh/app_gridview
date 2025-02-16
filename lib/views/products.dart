import 'dart:math';

import 'package:flutter/material.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(15.0),
      crossAxisSpacing: 15,
      mainAxisSpacing: 15,
      scrollDirection: Axis.horizontal,
      children: List.generate(products.length, (index) => GridItem(product: products[index])),
    );
  }
}

class Product {
  final String title;
  final String subtitle;
  Product({required this.title, required this.subtitle});
}

List<Product> products = [
  Product(title: 'Apples', subtitle: 'Fresh Fruits'),
  Product(title: 'Bananas', subtitle: ' Fresh Fruits'),
  Product(title: 'Noodles', subtitle: 'Instant Fruits'),
  Product(title: 'Ice Cream', subtitle: 'Desserts'),
  Product(title: 'Soap', subtitle: 'Personal Care'),
  Product(title: 'Dog Food', subtitle: 'Pet Care'),
  Product(title: 'Shampoo', subtitle: 'Personal Care'),
  Product(title: 'Candy', subtitle: 'Desserts'),
  Product(title: 'Popcorn', subtitle: 'Instant Foods'),
  Product(title: 'Fruit Juice', subtitle: 'Beverages'),
];

class GridItem extends StatelessWidget {
  final Product product;
  const GridItem({super.key, required this.product});
  Color getRandomColor() {
    Random random = Random();
    return Color.fromARGB(random.nextInt(255), random.nextInt(255),
        random.nextInt(255), random.nextInt(255));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        color: getRandomColor(),
        child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              Text(product.title,
                  style: const TextStyle(
                    fontSize: 20,
                  )),
              Text(product.subtitle,
                  style: const TextStyle(
                    fontSize: 15,
                  ))
            ])));
  }
}
