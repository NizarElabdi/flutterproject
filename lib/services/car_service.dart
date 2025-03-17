import '../models/car.dart';

class CarService {
  static List<Car> getCars() {
    return [
      Car(name: 'Toyota Yaris', imageUrl: 'assets/images/toyota_yaris.png', price: 75),
      Car(name: 'BMW X5', imageUrl: 'assets/images/bmw_x5.png', price: 200),
      Car(name: 'Mercedes Classe A', imageUrl: 'assets/images/mercedes_classe_a.png', price: 150),
    ];
  }
}
