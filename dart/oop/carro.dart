/* Willian Reichert - 28/10/2021
 * Carro */

class Car {
  static const int efficiency = 15; // Quilometragem por litro.
  final double capacity; // Capacidade do tanque.
  double mileage = 0; // Quilometragem total.
  double liters = 0; // Quantidade de gasolina no tanque, em litros.

  Car(this.capacity);

  // Informa o estado do tanque de gasolina.
  String get tankState {
    return '${liters.toStringAsFixed(2)} liters '
        '(${(liters / capacity * 100).toStringAsFixed(2)}%)';
  }

  // Representa o abastecimento de gasolina do veículo.
  void addFuel(double fuel) {
    var fuelAdded = ((liters + fuel) > capacity) ? (capacity - liters) : fuel;
    liters += fuelAdded;
    print('Fuel added: ${fuelAdded.toStringAsFixed(2)} liters\n'
        'Capacity: $tankState');
  }

  // Representa a realização de uma viagem de no máximo [km] km.
  void goForward(double km) {
    var litersSpent = (km / efficiency >= liters) ? liters : km / efficiency;
    liters -= litersSpent;
    print('Distance travelled: ${(litersSpent * efficiency).toStringAsFixed(2)}'
        ' km\nCapacity: $tankState');
  }
}

void main() {
  var car = Car(50); // Instancia um carro com um tanque de 50 l.
  car
    ..addFuel(50) // Enche o tanque.
    ..addFuel(10) // Tenta colocar mais que o limite.
    ..goForward(90)
    ..goForward(1000); // Tenta gastar mais gasolina que a disponível.
}
