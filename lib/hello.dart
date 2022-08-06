import 'dart:io';
import 'package:guess_number/game.dart';

void main() {
  var game = Game();


  int result = 0;
  print('╔═════════════════════════════════════════════════════');
  print('║\t\t\t\t\tGUESS THE NUMBER');
  print('║─────────────────────────────────────────────────────');
  do {
    //print('Please guess the number between 1 and 100');
    stdout.write('║ Guess the number  between 1 and 100: ');
    var input = stdin.readLineSync();
    //var guess =int.tryParse(input!)!;
    var guess =int.tryParse(input!);

    if (guess == null){
      continue;
    }

    result = game.doGuess(guess);

  } while(result != 1);
}

