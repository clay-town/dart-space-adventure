//import 'package:dart_space_adventure/dart_space_adventure.dart' as dart_space_adventure;
import 'dart:io';

printGreeting() {
  print('Welcome to the Solar System!');
  print('There are 8 planets to explore.');
}

void printIntroduction(String name) {
  print('Nice to meet you, $name. My name is Eliza, I\'m an old friend of Alexa.');
}

String randomOrNot() {
  print(
    'Let\'s go on an adventure!\n'
    'Shall I randomly choose a planet for your to visit? (Y or N)'
  );
  return stdin.readLineSync();
}

String responseToPrompt(String prompt) {
  print(prompt);
  return stdin.readLineSync();
}


void travel() {

  String answer;

  while (answer != 'Y' && answer != 'N'){
     answer = randomOrNot();
    if (answer == 'Y') {
      print(
        'Ok! Traveling to Mercury...\n'
        'Arrived at Mercury. A very hot planet, closest to the sun.'
      );
    } else if (answer == 'N') {
      print('Name the planet you would like to visit.');
      final planetName = stdin.readLineSync();

      print(
        'Traveling to $planetName...\n'
        'Arrived to $planetName. A very cold planet, furthest from the sun. '
      );  
    } else {
      print ('Sorry, I didn\'t get that');
    }
  }
}

void main(List<String> arguments) {

  printGreeting();

  printIntroduction(responseToPrompt("What is your name?"));  

  travel();
  
}