import 'package:dart_space_adventure/dart_space_adventure.dart';

void main(List<String> arguments) {
  SpaceAdventure(
    planetarySystem: PlanetarySystem(
      name: "Solar System", 
      planets: mockPlanets()
    )
  ).start();
}

List<Planet> mockPlanets() {
  return [
    Planet(
      name: 'Mercury', 
      description: 'a very hot planet, closest to the sun'
    ),
    Planet(
      name: 'Earth', 
      description: 'Third rock from the sun'
    ),
    Planet(
      name: 'Jupiter', 
      description: 'Its a big one'
    )
  ];
}