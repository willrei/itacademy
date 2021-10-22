/* Willian Reichert - 21/10/2021
 * Números */

void main(List<String> args) {
  // Apenas são aceitas execuções com exatamente um parâmetro.
  if (args.length != 1) {
    print('Usage: dart numeros.dart <message>');
    return;
  }

  // A tentativa de parsing retorna null caso o char não represente um número.
  final message = args.first;
  for (var i = 0; i < message.length; i++) {
    print('${message[i]} is ${int.tryParse(message[i]) == null ? 'not ' : ''}'
        'a number'); // Não é muito legível, mas serve.
    /* if (int.tryParse(message[i]) == null) print('${message[i]} is not a number');
     * else print('${message[i]} is a number'); */
  }
}
