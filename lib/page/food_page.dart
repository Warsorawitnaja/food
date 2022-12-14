import 'package:flutter/material.dart';

import '../models/food.dart';

class FoodPage extends StatelessWidget {
  final Food food;

  const FoodPage({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(food.name),
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/images/${food.imageUrl}',
            width: 200,
          ),
          Align(alignment: Alignment.topLeft , child: Text('${food.price}')),
        ],
      ),
    );
  }
}
