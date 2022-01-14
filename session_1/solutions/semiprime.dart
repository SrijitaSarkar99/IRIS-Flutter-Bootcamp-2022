//Write a program to check whether the given number is semiprime or not

import 'dart:io';

void semiprime(int N) {
  int count = 0;
  for (int i = 2; count < 2 && i * i <= N; (i == 2) ? i++ : i = i + 2) {
    while (N % i == 0) {
      N = N ~/ i;
      count++;
    }
  }
       
            
    if (N > 1) ++count;

    if(count == 2)
      stdout.write('Semiprime number\n');
    else
      stdout.write('Not a semiprime number\n');
}

void main() {
  //Display on terminal
  stdout.writeln("Enter a number: ");

  //Scanning number
  int? N = int.parse(stdin.readLineSync()!);

  semiprime(N);
}