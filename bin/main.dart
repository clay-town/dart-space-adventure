import 'package:dart_space_adventure/dart_space_adventure.dart';

const systemName = 'Solar System';
const planetData = {
  'Mercury': 'a very hot planet, closest to the sun',
  'Earth': 'Third rock from the sun',
  'Jupiter': 'Its a big one'
};

void main(List<String> arguments) {
  SpaceAdventure(
    planetarySystem: PlanetarySystem(
      name: systemName, 
      planets: mockPlanets()
    )
  ).start();
}

List<Planet> mockPlanets() {
  return planetData.entries.map( 
    (e) => Planet(name: e.key, description: e.value)
  ).toList();
}