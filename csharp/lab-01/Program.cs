const int TamDivisor = 120;

/* Parte 01 --------------------------------------------------------------------------------------------------------- */
Console.WriteLine("\nTrabalhando com tipos-valor fundamentais byte, int e long\n" + new string('-', TamDivisor));

byte b = Byte.MaxValue;
Console.WriteLine($"Valor máximo de byte: {b}");

int i = int.MaxValue;
Console.WriteLine($"Valor máximo de int: {i}");

long l = long.MaxValue;
Console.WriteLine($"Valor máximo de long: {l}");

/* Parte 02 --------------------------------------------------------------------------------------------------------- */
Console.WriteLine("\nTrabalhando com strings\n" + new string('-', TamDivisor));

string strPrimeira = "Alo ";
string strSegunda = "Mundo";
string strTerceira = strPrimeira + strSegunda;
Console.WriteLine(strTerceira);

int cchTamanho = strTerceira.Length;
string strQuarta = "Tamanho: " + cchTamanho.ToString();
Console.WriteLine(strQuarta);

Console.WriteLine($"Substring: \"{strTerceira.Substring(0, 5)}\"");

/* Parte 03 --------------------------------------------------------------------------------------------------------- */
Console.WriteLine("\nTrabalhando com objetos do Framework\n" + new string('-', TamDivisor));

DateTime dt = new DateTime(2021, 11, 12);
Console.WriteLine(dt.ToString());

/* Exercício 01 ----------------------------------------------------------------------------------------------------- */
Console.WriteLine("\nExercício 01\n" + new string('-', TamDivisor));

float f = float.MaxValue;
Console.WriteLine($"Maior valor de float: {f}");

double d = double.MaxValue;
Console.WriteLine($"Maior valor de double: {d}");

decimal dec = decimal.MaxValue;
Console.WriteLine($"Maior valor de decimal: {dec}");

/* Exercício 02 ----------------------------------------------------------------------------------------------------- */
Console.WriteLine("\nExercício 02\n" + new string('-', TamDivisor));

string teste = "Texto para testes";
Console.WriteLine($"String: {teste}");
Console.WriteLine($"Quarto caractere: {teste[4]}");
Console.WriteLine($"Contém \"test\"?: {teste.Contains("test")}");
Console.WriteLine($"Tamanho: {teste.Length} caracteres");

/* Exercício 03 ----------------------------------------------------------------------------------------------------- */
Console.WriteLine("\nExercício 03\n" + new string('-', TamDivisor));

DateTime t = new DateTime(2021, 11, 13);
Console.WriteLine($"DateTime: {t}");
Console.WriteLine($"Adição de 35 dias: {t.AddDays(35.0)}");
Console.WriteLine($"Dentro do intervalo de horário de verão?: {t.IsDaylightSavingTime()}");
Console.WriteLine($"No tempo local: {t.ToLocalTime()}");
Console.WriteLine($"Em UTC: {t.ToUniversalTime()}");

/* Exercício 04 ----------------------------------------------------------------------------------------------------- */
Console.WriteLine("\nExercício 04\n" + new string('-', TamDivisor));

int numI = 10;
float numF = 0;
numF = numI;
Console.WriteLine($"Inteiro como float implicitamente: {numF}");

numF = 0.5F;
numI = (int) numF;
Console.WriteLine($"Float como inteiro explicitamente: {numI} (deveria ser 0.5)");

/* Exercício 05 ----------------------------------------------------------------------------------------------------- */
Console.WriteLine("\nExercício 05\n" + new string('-', TamDivisor));

string stringInteiro = "123456789";
int valorStringInteiro = Convert.ToInt32(stringInteiro);
Console.WriteLine($"String para inteiro: {valorStringInteiro}");

Int64 valorInt64 = 123456789;
int valorInt = Convert.ToInt32(valorInt64);
Console.WriteLine($"Inteiro de 64 bits para 32 bits: {valorInt}");

/* Exercício 06 ----------------------------------------------------------------------------------------------------- */
Console.WriteLine("\nExercício 06\n" + new string('-', TamDivisor));

Console.WriteLine($"String original: {stringInteiro}");
bool conversao1 = Int32.TryParse(stringInteiro, out valorStringInteiro);
Console.WriteLine($" - Conversão efetuada: {conversao1}! Valor: {valorStringInteiro}");

string stringInteiroGrande = "999999999999999999999999999999999999999999999";
int valorStringInteiroGrande;
Console.WriteLine($"String original: {stringInteiroGrande}");
bool conversao2 = Int32.TryParse(stringInteiroGrande, out valorStringInteiroGrande);
Console.WriteLine($" - Conversão efetuada: {conversao2}! Valor: {valorStringInteiroGrande}");

string stringLetras = "abc";
double valorStringLetras;
Console.WriteLine($"String original: {stringLetras}");
bool conversao3 = Double.TryParse(stringLetras, out valorStringLetras);
Console.WriteLine($" - Conversão efetuada: {conversao3}! Valor: {valorStringLetras}");

/* Exercício 07 ----------------------------------------------------------------------------------------------------- */
Console.WriteLine("\nExercício 07\n" + new string('-', TamDivisor));

double valorFracionado = 4.7;
int valorInteiro1 = (int) valorFracionado;
int valorInteiro2 = Convert.ToInt32(valorFracionado);
Console.WriteLine($"Conversão explicita: {valorInteiro1} (truncado)");
Console.WriteLine($"Conversão pelo método Convert: {valorInteiro2} (arredondado)");

/* Exercício 08 ----------------------------------------------------------------------------------------------------- */
Console.WriteLine("\nExercício 08\n" + new string('-', TamDivisor));

/* No exemplo abaixo, os valores contidos nas variáveis são interpolados na string nas posições referentes às suas
 * posições como parâmetros do método WriteLine, subtraído de 1 visto que o primeiro parâmetro é a própria string. */
int x = 10;
double y = 3.4;
Console.WriteLine("Inteiro: {0}\nDouble: {1}", x, y);
