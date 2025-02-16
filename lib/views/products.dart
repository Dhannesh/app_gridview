
import 'dart:math';

import 'package:flutter/material.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: 0.5,
        // mainAxisExtent: 300,
      ),
      padding: const EdgeInsets.all(5.0),
      children: List.generate(
        products.length,
        (index) => GridItem(product: products[index]),
      ),

    );
  }
}

class Product {
  final String image;
  final String title;
  Product({required this.image, required this.title});
}

List<Product> products = [
  Product(image: 'images/heels.jpg', title: 'High heels'),
  Product(image: 'images/heels2.jpg', title: 'Party heels'),
  Product(image: 'images/heels3.jpg', title: 'Stylish heels'),
  Product(image: 'images/heels4.jpg', title: 'Red heels'),
  Product(image: 'images/heels5.jpg', title: 'Black heels'),
  Product(image: 'images/heels6.jpg', title: 'Trendy heels'),
  Product(image: 'images/heels7.jpg', title: 'Fashionable heels'),
  Product(image: 'images/heels8.jpg', title: 'White heels'),
  Product(image: 'images/heels9.jpg', title: 'Laced heels'),
];

class GridItem extends StatelessWidget {
  final Product product;
  const GridItem({super.key, required this.product});

  Color getRandomColor (){
    Random random = Random();
    return Color.fromARGB(random.nextInt(255), random.nextInt(255), random.nextInt(255), random.nextInt(255));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: getRandomColor(),
      elevation: 5,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,
        ),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage(product.image), width: 125, height: 125, fit: BoxFit.fill),
          Text(product.title, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
        ]
      ),
    );
  }
}

