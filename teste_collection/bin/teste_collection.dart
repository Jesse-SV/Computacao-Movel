import 'dart:convert';

import 'package:teste_collection/teste_collection.dart' as teste_collection;

void main(List<String> arguments) {
  // A lista sem parâmetro pode receber qualquer valor
  List qualquer = ['Jesse', 'Paulo', 'Sergio', 5, false];
  print('List sem parametro: $qualquer');

  List<String> nomes = ['Jesse', 'Paulo', 'Sergio'];
  print('List com tipo String: $nomes');

  List<int> numeros = [5, 4, 3, 2, 7, 20, 20];
  // Posições podem ser acessadas
  print(numeros[1]);
  numeros.add(9);
  print('Após o add: $numeros');

  List<int> auxiliar = [3, 2, 1];
  // Juntar vetores (no final como uma pilha)
  numeros.addAll(auxiliar);
  print('Após o addAll: $numeros');

  numeros.insert(0,50);
  print('Após o insert: $numeros');

  // Retorna true se o elemento estiver na lista
  print(numeros.contains(2));

  // Remove o elemento da lista (se tiver mais de um só remove o primeiro que encontrar)
  print(numeros.remove(20));
  print(numeros);

  // Retorna a posição na lista
  print(numeros.indexOf(20));

  // Remover valor da posição fornecida
  print(numeros.removeAt(3));
  print(numeros);

  // Shuffle brabo
  numeros.shuffle();
  print('Shuffle: $numeros');

  // Limpa todo a lista
  numeros.clear();
  print('Clear: $numeros');

  List<String> alunos = ['Jessé', 'Daniel', 'Victor', 'Felipe', 'Marcos', 'Rafael'];

  for(int i = 0; i < alunos.length; i++){
    print(alunos[i].toUpperCase());
  }
  for(String aluno in alunos){
    print(aluno.toUpperCase());
  }
  // Pedaço da lista
  for(String aluno in alunos.sublist(1,3)){
    print(aluno.toUpperCase());
  }
  alunos.forEach((aluno) { print(aluno.toUpperCase());});

  // Preenche a lista com 20 elementos de numero 8
  List<int> repetida = List.filled(20, 8);
  print(repetida);

  // Preenche a lista com 10 elementos do retorno da função
  List<int> intervalo = List.generate(10, valores);
  print(intervalo);

  // Mesma coisa com arrow function
  List<int> intervalo2 = List.generate(10, (i) => i*10);
  print(intervalo2);
  // Verifica se está vazia
  print(intervalo2.isEmpty);
  // Verifica se não está vazia (isso precisava mesmo de comentário?)
  print(intervalo2.isNotEmpty);
  // Verifica se tem um número multiplo de 20
  print(intervalo.any((i) => i % 20 == 0));
  // Retorna todos os elementos divisiveis por 5
  print(intervalo.where((i) => i % 5 == 0));
  // Retorna o ultimo elemento divisiveil por 5
  print(intervalo.lastWhere((i) => i % 5 == 0));
  
  // Nao da pra colocar o null em uma lista (entao a gente vai tirar issoai)

  // Tabela Hash
  Map<int, String> ddds = {
    42: 'Guarapuava', 41: 'Curitiba', 11: 'São Paulo'
  };
  print(ddds);
  print(ddds[41]);

  ddds[49] = 'Pato Branco';
  print(ddds);

  ddds.remove(42);
  print(ddds);

  // Imprime só os valores sem as chaves
  print(ddds.values);
  // Verifica se tem o valor
  print(ddds.containsValue('Curitiba'));
  // Imprime só as chaves
  print(ddds.keys);
  // Verifica se tem a chave
  print(ddds.containsKey(41));

  ddds.forEach((key, value){
    print('Keys: $key Value: $value');
  });

  ddds.addAll({44: 'Maringa', 45: 'Londrina'});
  print(ddds);

  // Remove os valores baseado em alguma clausula
  ddds.removeWhere((key, value) => key > 20);
  print(ddds);
  // Chave sempre vai ser string, e o valor pode ser qualquer coisa
  Map<String, dynamic> dados = json.decode(dadosAluno());
  print(dados);
  // Retorna o valor baseado na chave
  print(dados['nome']);
  // legal
  print(dados['telefones'][0]['numero']);
}

int valores(int pos){
    return pos*10;
}
String dadosAluno(){
  return """{
    "nome" : "Jessé",
    "sobrenome" : "Veloso",
    "idade" : 19,
    "casado" : false,
    "telefones" : [
    {"ddd" : 42, "numero": 9998289832, "tipo": "celular"},
    {"ddd" : 41, "numero": 9998232832, "tipo": "zipzop"}
    ]
  }""";
}
