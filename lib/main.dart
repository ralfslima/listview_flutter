// Importar pacote Material
import 'package:flutter/material.dart';
import 'package:projeto/ListaProdutos.dart';

// Inicialização
void main() {
  runApp(const MyApp());
}

// StatelessWidget
class MyApp extends StatelessWidget {
  // Construtor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
      ),
      home: const Pagina(),
    );
  }
}

// StatefulWidget
class Pagina extends StatefulWidget {
  // Construtor
  const Pagina({super.key});

  @override
  State<StatefulWidget> createState() {
    return ConteudoPagina();
  }
}

// State
class ConteudoPagina extends State {
  // Variável para armazenar o nome digitador
  String? nome;

  initState() {
    ListaProdutos lp = ListaProdutos();
    print(ListaProdutos.produtos);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listagem de dados"),
      ),
      body: Center(
        child: SizedBox(
          width: 500,
          child: SizedBox(
            height: 400,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: ListaProdutos.produtos.length,
              itemBuilder: (BuildContext obj, int indice) {
                return Card(
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      ListaProdutos.produtos[indice].nome!,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
