import 'package:flutter/material.dart'; // Biblioteca que tem dentro do Dart que consegue buscar funções, classes, objetos que será necessário usar

void main() => runApp(
        // Ao usar o Material App, não será mais necessário passar o textDirection
        MaterialApp(
            // Scaffold seria o esqueleto da aplicação. Sempre colocado após o home
            home: Scaffold(
              body: Card(
                child: Text('Teste'),
              ),
              appBar: AppBar(
                title: const Text('Transferências'),
              ),
              floatingActionButton: FloatingActionButton(
                // onPressed ficará a função ...
                onPressed: () {},
                child: const Icon(Icons.add),
              ),
            )));
