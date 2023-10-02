library soft_data_table;

import 'package:flutter/material.dart';

class SoftDataTable extends StatelessWidget {
  final List<DataColumn> columns;
  final List<DataRow> rows;
  final Color headerColor;
  final Color cellColor;

  const SoftDataTable({super.key, 
    required this.columns,
    required this.rows,
    this.headerColor = Colors.blue,
    this.cellColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: columns,
      rows: rows,
      headingRowColor: MaterialStateColor.resolveWith((states) => headerColor),
      dataRowColor: MaterialStateColor.resolveWith((states) => cellColor),
    );
  }
}
