
import 'package:flutter/material.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(5.0),
      crossAxisSpacing: 15,
      mainAxisSpacing: 15,
      children: [...images],
    );
  }
}

final List<Image> images = [
  const Image(image: AssetImage('images/heels.jpg'),fit: BoxFit.cover),
  const Image(image: AssetImage('images/heels1.jpg'),fit: BoxFit.cover),
  const Image(image: AssetImage('images/heels2.jpg'),fit: BoxFit.cover),
  const Image(image: AssetImage('images/heels3.jpg'),fit: BoxFit.cover),
  const Image(image: AssetImage('images/heels4.jpg'),fit: BoxFit.cover),
  const Image(image: AssetImage('images/heels5.jpg'),fit: BoxFit.cover),
  const Image(image: AssetImage('images/heels6.jpg'),fit: BoxFit.cover),
  const Image(image: AssetImage('images/heels7.jpg'),fit: BoxFit.cover),
  const Image(image: AssetImage('images/heels8.jpg'),fit: BoxFit.cover),
  const Image(image: AssetImage('images/heels9.jpg'),fit: BoxFit.cover),

];


