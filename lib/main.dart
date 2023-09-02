import 'package:flutter/material.dart'; // Biblioteca que tem dentro do Dart que consegue buscar funções, classes, objetos que será necessário usar

void main() {
  runApp(BankApp());
}

class BankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Hot reload
    // TODO: implement build
    // Ao usar o Material App, não será mais necessário passar o textDirection
    return MaterialApp(
        debugShowCheckedModeBanner: false, //Retirando a tarja vermelha do Debug
        // Scaffold seria o esqueleto da aplicação. Sempre colocado após o home
        home: Scaffold(
          body: FormularioTransferencia(),
        ));
  }
}

class FormularioTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Text('Criando Transferência'),
          backgroundColor: const Color.fromARGB(221, 9, 16, 77),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Número da conta', hintText: '0000'),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Valor Transferência',
                        hintText: '000000000000000.00'),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

// StatelessWidget renderização do estado atual
// Stateless é um widget estático
// Stateful é completamente dinâmico
class ListaTransferencias extends StatelessWidget {
  // Construção do widget
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transferências'),
        backgroundColor: const Color.fromARGB(221, 9, 16, 77),
      ),
      body: Column(
        children: [
          ItemTransferencia(Transferencia(valor: 1000, numeroConta: 1234)),
          ItemTransferencia(Transferencia(valor: 355.75, numeroConta: 1122)),
          ItemTransferencia(Transferencia(numeroConta: 3465, valor: 3456.78))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed ficará a função ...
        onPressed: () {},
        backgroundColor: const Color.fromARGB(221, 9, 16, 77),
        child: const Icon(Icons.add),
      ),
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
