void main() {
  PowerGrid grid = new PowerGrid();
  NuclearPlant nuclear = new NuclearPlant();
  SolarPlant solar = new SolarPlant();

  grid.addPlant(solar);
  grid.addPlant(nuclear);
}

class PowerGrid {
  List<PowerPlant> connectedPlants = [];

  addPlant(PowerPlant plant) {
    bool confirmation = plant.turnOn('5 hours');
    connectedPlants.add(plant);
  }
}

abstract class PowerPlant {
  //abstract class is used to write more reusable codes.
  int costOfEnergy;
  bool turnOn(String duration);
}

class NuclearPlant implements PowerPlant {
  int costOfEnergy;
  bool turnOn(String timeToStayOn) {
    print('Im a nuclear plant turning on');
    return true;
  }
}

class SolarPlant implements PowerPlant {
  int costOfEnergy;
  bool turnOn(String howLongOn) {
    print('Im a solar plant turning on');
    return false;
  }
}
