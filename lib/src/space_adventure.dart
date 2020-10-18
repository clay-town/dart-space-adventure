import 'dart:io';
import 'dart:math';
import 'planetary_system.dart';
import 'planet.dart';

class SpaceAdventure {

  final PlanetarySystem planetarySystem;

  SpaceAdventure({this.planetarySystem});

  void start() {
    printGreeting();
    printIntroduction(responseToPrompt("What is your name?"));  
    print('Let\'s go on an adventure!\n');
    if (planetarySystem.hasPlanets) {
      travel(
        promptForRandomOrSpecificDestination(
          'Shall I randomly choose a planet for you to visit? (Y or N)'
        )
      );
    } else {
      print('There are no planets to explore...Bummer Ned');
    }
  }

  printGreeting() {
  
    print('Welcome to the ${planetarySystem.name}!');
    print('There are ${planetarySystem.numberOfPlanets} planets to explore.');
  }

  void printIntroduction(String name) {
    print('Nice to meet you, $name. My name is Eliza, I\'m an old friend of Alexa.');
  }

  String responseToPrompt(String prompt) {
    print(prompt);
    return stdin.readLineSync();
  }

  void travelToPlanet(Planet planet) {
    print('Traveling to ${planet.name}');
    print('Arrived at ${planet.name}. ${planet.description}');
  }

  void travelTo(String destination) {
    var destinationPlanet = planetarySystem.planetWithName(destination);
    travelToPlanet(destinationPlanet);
  }

  void travel(bool randomDestination) {
    if (randomDestination) {
      travelToPlanet(planetarySystem.randomPlanet());
    } else {
      travelTo(responseToPrompt('Name the planet you would like to visit.'));
    }

  }

  bool promptForRandomOrSpecificDestination(String prompt) {
    String answer;

    while (answer != 'Y' && answer != 'N'){
      answer = responseToPrompt(prompt);
      if (answer == 'Y') {
        return true;

      } else if (answer == 'N') {
        return false;
        
      } else {
        print ('Sorry, I didn\'t get that');
      }
    }
  }
}