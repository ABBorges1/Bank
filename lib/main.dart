import 'package:flutter/material.dart'; // Biblioteca que tem dentro do Dart que consegue buscar funções, classes, objetos que será necessário usar

void main() => runApp(
        // Ao usar o Material App, não será mais necessário passar o textDirection
        MaterialApp(
            // Scaffold seria o esqueleto da aplicação. Sempre colocado após o home
            home: Scaffold(
      body: ListaTransferencias(),
      appBar: AppBar(
        title: const Text('Transferências'),
        backgroundColor: const Color.fromARGB(221, 9, 16, 77),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed ficará a função ...
        onPressed: () {},
        backgroundColor: const Color.fromARGB(221, 9, 16, 77),
        child: const Icon(Icons.add),
      ),
    )));

// StatelessWidget renderização do estado atual
// Stateless é um widget estático
// Stateful é completamente dinâmico
class ListaTransferencias extends StatelessWidget {
  // Construção do widget
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        ItemTransferencia(Transferencia(valor: 1000, numeroConta: 1234)),
        ItemTransferencia(Transferencia(valor: 355.75, numeroConta: 1122)),
        ItemTransferencia(Transferencia(numeroConta: 3465, valor: 3456.78))
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia); //Construtor

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      // ListTile lista os títulos. Consegue colocar título e subtitulo
      child: ListTile(
        // leading responsavel por colocar um desenho, um ícone
        leading: Icon(
          Icons.monetization_on,
          color: Color.fromARGB(255, 4, 132, 9),
        ),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      ),
    );
  }
}

class Transferencia {
  final double? valor;
  final int? numeroConta;

  Transferencia({this.valor, this.numeroConta});
}
