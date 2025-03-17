
import 'package:flutter/material.dart';
import '../models/car.dart';
import 'details.dart';

class HomePage extends StatelessWidget {
  final List<Car> cars = [
    Car(name: 'Voiture 1', imageUrl: 'https://via.placeholder.com/150', price: 100),
    Car(name: 'Voiture 2', imageUrl: 'https://via.placeholder.com/150', price: 150),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location de Voitures'),
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cars[index].name),
            leading: Image.network(cars[index].imageUrl),
            subtitle: Text('${cars[index].price}€/jour'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CarDetailsPage(car: cars[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
