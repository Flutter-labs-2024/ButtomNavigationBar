import 'package:flutter/material.dart';

class MyDatatable extends StatelessWidget {
  const MyDatatable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: DataTable(columns: [
        DataColumn(label: Text('Id')),
        DataColumn(label: Text('Name')),
        DataColumn(label: Text('Age'))




      ], rows: [
        DataRow(cells: [
          DataCell(Text('1')) ,
          DataCell(Text('Ahmed')) ,
          DataCell(Text('20')) ,

        ]),
        DataRow(cells: [
          DataCell(Text('2')) ,
          DataCell(Text('Aisha')) ,
          DataCell(Text('19')) ,

        ]),
        DataRow(cells: [
          DataCell(Text('3')) ,
          DataCell(Text('Mohamed')) ,
          DataCell(Text('21')) ,

        ])
      ]),),
    );
  }
}
