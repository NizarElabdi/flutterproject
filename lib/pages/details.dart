import 'package:flutter/material.dart';
import '../models/car.dart';

class CarDetailsPage extends StatelessWidget {
  final Car car;

  CarDetailsPage({required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(car.name)),
      body: Column(
        children: [
          Image.network(car.imageUrl),
          SizedBox(height: 10),
          Text(
            'Prix : ${car.price}€/jour',
            style: TextStyle(fontSize: 24),
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('Confirmation'),
                  content: Text('Vous avez réservé ${car.name} pour ${car.price}€/jour.'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('OK'),
                    ),
                  ],
                ),
              );
            },
            child: Text('Réserver'),
          ),
        ],
      ),
    );
  }
}
