/* Laboratório ------------------------------------------------------------------------------------------------------ */
Console.WriteLine("\nLaboratório:\n" + new string('-', 120));

int[] array = new int[5] { 10, 20, 30, 40, 50 };
int i = 0;
foreach (int item in array)
{
    Console.WriteLine($"Inteiros -> Índice = {i} & Valor = {item}");
}

string[] str = new string[3] { "Um", "Dois", "Três" };
i = 0;
foreach (string item in str)
{
    Console.WriteLine($"Strings -> Índice = {i} & Texto = {item}");
}

DateTime[] dt = new DateTime[2];
dt[0] = new DateTime(2021, 12, 3);
dt[1] = new DateTime(2021, 12, 19);
i = 0;
foreach (DateTime item in dt)
{
    Console.WriteLine($"Datas -> Índice = {i} & Data = {item.ToShortDateString()}");
}

/* Exercício 01 ----------------------------------------------------------------------------------------------------- */
Console.WriteLine("\nExercício 01:\n" + new string('-', 120));


