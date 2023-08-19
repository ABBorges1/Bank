import 'package:flutter/material.dart'; // Biblioteca que tem dentro do Dart que consegue buscar funções, classes, objetos que será necessário usar

void main() => runApp(
      Column(
        children: [
          Text(
            'Bem Vindo ao primeiro Texto Flutter!',
            textDirection: TextDirection
                .ltr, // Ao inserir um texto o Dart pede a direção do Texto. Neste caso está sendo informado que será lido da esquerda para direita
          ),
          Text(
            'Bem Vindo ao segundo Texto Flutter!',
            textDirection: TextDirection
                .ltr, // Ao inserir um texto o Dart pede a direção do Texto. Neste caso está sendo informado que será lido da esquerda para direita
          ),
          Expanded(
              child: FittedBox(
            fit: BoxFit.contain,
            child: const FlutterLogo(),
          ))
        ],
      ),
    );
