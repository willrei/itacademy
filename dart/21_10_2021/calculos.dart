/* Willian Reichert - 21/10/2021
 * Calculos */

void main(List<String> args) {
  // Apenas são aceitas execuções com exatamente um parâmetro.
  if (args.length != 1) {
    print('Usage: dart palavra.dart <integer>');
    return;
  }

  // Apenas são aceitas execuções com um inteiro como parâmetro.
  final number = int.tryParse(args.first);
  if (number == null) {
    print('Usage: dart palavra.dart <integer>');
    return;
  }

  // Chamadas para todas as funções.
  print('Summation from 0 to $number: ${summation(number)}');
  print('Product from 1 to $number: ${product(number)}');
  print('Factorial of $number: ${factorial(number)}');
  print('Primes from 1 to $number: ${primes(number).toString()}');
  print('First $number numbers from Fibonacci sequence:');
  for (var i = 0; i < number; i++) print('  Fib($i): ${fibonacci(i)}');
}

// Calcula o somatório de 0 a number.
// Poderia ser feito de forma iterativa.
int summation(int number) {
  return (number + 1) * number ~/ 2;
}

// Calcula o produtório de 1 a number.
int product(int number) {
  if (number == 0) print(1);
  var product = 1;
  for (var i = number; i > 1; i--) product *= i;
  return product;
}

// Calcula o fatorial de number.
// É essencialmente o mesmo que o produtório de 1 a number.
int factorial(int number) {
  if (number == 0) return 1;
  return number * factorial(number - 1);
}

// Encontra todos os primos entre 1 e number.
// Propositalmente mais complicado para ter um exemplo de uso de lista.
List<int> primes(int number) {
  List<int> numbers = [];
  for (var i = 2; i <= number; i++) {
    var j = 2;
    while (i % j != 0) j++;
    if (i == j) numbers.add(i);
  }
  return numbers;
}

// Cálculo dos number primeiros termos da sequência recursivamente.
int fibonacci(int number) {
  if (number == 0) return 0;
  if (number == 1) return 1;
  return fibonacci(number - 1) + fibonacci(number - 2);
}