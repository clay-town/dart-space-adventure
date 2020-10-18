class PlanetarySystem {
  String name;

  PlanetarySystem() {
    this.name = "Unnamed System";
  }

  PlanetarySystem.withName(String name) {
    this.name = name;
  }

}

var ps = PlanetarySystem();
var dagobah = PlanetarySystem.withName("Dagobah System")