import 'dart:io';
import 'dart:math';

class Game {
  int answer = 0;

  Game() {
    var r = Random();
    answer = r.nextInt(100) + 1;
  }

  int total_guess = 0;
  int doGuess(int num) {
      if(num > answer) {
        print('║ ➜ $num is TOO HIGHT! ▲');
        print('║─────────────────────────────────────────────────────');
        total_guess+=1;
        return 0;
      }else if (num <answer) {
        print('║ ➜ $num is TOO LOW! ▼');
        print('║─────────────────────────────────────────────────────');
        total_guess+=1;
        return 0;
      }else {
        print('║ ➜ $num is CORRECT ❤, total guesses: $total_guess');
        print('║─────────────────────────────────────────────────────');
        print('║\t\t\t\t\t\tTHE END');
        print('╚═════════════════════════════════════════════════════');
        return 1;
      }
  }
}