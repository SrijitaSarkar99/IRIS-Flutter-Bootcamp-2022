//Print the first N Fibonacci numbers
import 'dart:io';

void fibo(int n) {
  int a = 0 , b = 1, p;
  for(var i = 0; i < n; i++) {

    if(i <= 1) {
      p = i;
    }
    else {
      p = a + b;
      a = b;
      b = p;
    }
    stdout.write('$p' + ' ');
  }
  stdout.write('\n');
}

void main() {
  //Display on terminal
  stdout.writeln("Enter the value of N: ");

  //Scanning number
  int? N = int.parse(stdin.readLineSync()!);

  fibo(N);
}