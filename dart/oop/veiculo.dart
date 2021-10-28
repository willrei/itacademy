/* Willian Reichert - 28/10/2021
 * Veiculo */

// Classe abstrata que representa um veículo qualquer.
abstract class Vehicle {
  void turnOn();
  void turnOff();
}

// Classe que representa um veículo aéreo.
class Aircraft implements Vehicle {
  String manufacturer;
  Aircraft(this.manufacturer);
  void turnOn() => print('Aircraft is now turned on');
  void turnOff() => print('Aircraft is now turned off');
  void goForward() => print('Aircraft is going forward');
}

// Classe que representa um avião, o qual é um veículo aéreo.
class Plane extends Aircraft {
  Plane(manufacturer): super(manufacturer);
  @override
  void turnOn() => print('Plane is now turned on');
  @override
  void turnOff() => print('Plane is now turned off');
  @override
  void goForward() => print('Plane is going forward');
  void showSmoke() => print('Plane engine is on fire');
}

// Classe que representa um dirigível, o qual é um veículo aéreo.
class Blimp extends Aircraft {
  Blimp(manufacturer): super(manufacturer);
  @override
  void turnOn() => print('Blimp is now turned on');
  @override
  void turnOff() => print('Blimp is now turned off');
  @override
  void goForward() => print('Blimp is going forward');
}

void main() {
  var aircraft = Aircraft('airmaker');
  var plane = Plane('planemaker');
  var blimp = Blimp('blimpmaker');

  aircraft
    ..turnOn()
    ..goForward()
    ..turnOff();

  plane
    ..turnOn()
    ..goForward()
    ..showSmoke()
    ..turnOff();

  blimp
    ..turnOn()
    ..goForward()
    ..turnOff();
}
