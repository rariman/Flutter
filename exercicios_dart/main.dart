class Produto {
  String? nome;
  double? preco;

  Produto(String nome, double preco)
  {
    this.nome = nome;
    this.preco = preco;
  }
}

int soma (int a, int b){
  return(a+b);
}

int exec(int a, int b, int Function(int, int) fn)
{
  return fn(a, b);
}

main()
{
  var p1 = Produto("Lapis", 2.21);
  var p2 = Produto("Lapis", 2.21);

  print('O produto ${p1.nome} tem preço de ${p1.preco}');

  final b = 3;
  const c = 5;

  exec(c, b, soma);
  exec(c, b, (a,b){
    return a = a-b;
  });
  
  int r = exec(c,b, (a,b) => a*b + 100);

  print('O valor de r é ${r}');
  print('O valor da somas é ${soma(b,c)}');

  var nomes = ['Ana', 'Bia', 'Carlos'];
  nomes.add('Daniel');
  nomes.add('Daniel');
  nomes.add('Daniel');
  print(nomes.length);
  print(nomes.elementAt(3));

  Set<int> conjunto = {0, 1, 2, 3, 4, 5, 6};
  print(conjunto.length);
  print(conjunto is Set);

  Map<String, double> notasAlunos = {
    'Ana':9.7,
    'Bia':9.2,
    'Carlos':9.1,
  };

  for (var chave in notasAlunos.keys)
  {
    print('chave= $chave');
  }

  for (var value in notasAlunos.values)
  {
    print('value= $value');
  }

  for (var registros in notasAlunos.entries)
  {
    print('${registros.key} = ${registros.value}');
  }
}