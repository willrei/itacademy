/* Willian Reichert - 21/10/2021
 * Palavra */

void main(List<String> args) {
  // Apenas são aceitas execuções com exatamente um parâmetro.
  if (args.length != 1) {
    print('Usage: dart palavra.dart <word>');
    return;
  }

  final word = args.first.toLowerCase();
  var letterCount = {}; // Mapeamento de cada letra para sua contagem.
  var vowelCount = 0;
  final vowels = RegExp(r'[aeiou]'); // Expressão regular que identifica vogais.

  // Cada letra da palavra é mapeada para sua contagem.
  // Vogais são identificadas com ajuda da expressão regular.
  for (var i = 0; i < word.length; i++) {
    letterCount.update(word[i], (value) => ++value, ifAbsent: () => 1);
    if (word[i].contains(vowels)) vowelCount++;
  }

  // Impressão dos resultados.
  print('Vowel count: $vowelCount\n'
      'Consonant count: ${word.length - vowelCount}\n'
      'Letter count:');
  letterCount.forEach((key, value) => print('  $key: $value'));
}
