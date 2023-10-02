<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

# Custom DataTable Widget

O **Custom DataTable** é um widget Flutter altamente personalizável que permite criar tabelas de dados de forma flexível e adaptada às suas necessidades. Este widget foi projetado para fornecer controle total sobre a aparência e o comportamento da tabela de dados em seu aplicativo.

## Recursos Principais

- **Personalização Total**: Você pode personalizar as colunas, linhas, cores de cabeçalho e cores de células de dados da tabela de acordo com o design do seu aplicativo.

- **Integração Simples**: Integre facilmente o **Custom DataTable** em seus projetos existentes, proporcionando uma experiência de usuário consistente.

- **Documentação Detalhada**: Incluímos documentação completa e exemplos para ajudar você a aproveitar ao máximo este widget personalizado.

## Exemplo de Uso

Aqui está um exemplo de como usar o **Custom DataTable** em seu código Flutter:

```dart
import 'package:flutter/material.dart';
import 'package:seu_pacote/custom_data_table.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exemplo Custom DataTable'),
        ),
        body: Center(
          child: CustomDataTable(
            columns: [
              DataColumn(label: Text('Nome')),
              DataColumn(label: Text('Idade')),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('Alice')),
                DataCell(Text('28')),
              ]),
              DataRow(cells: [
                DataCell(Text('Bob')),
                DataCell(Text('32')),
              ]),
            ],
            headerColor: Colors.blue, // Personalize a cor do cabeçalho aqui
            cellColor: Colors.white,   // Personalize a cor das células de dados aqui
          ),
        ),
      ),
    );
  }
}
