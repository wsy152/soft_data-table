library soft_data_table;

import 'package:flutter/material.dart';

class SoftDataTable extends StatelessWidget {
  final List<DataColumn> columns;
  final List<DataRow> rows;
  final Color headerColor;
  final Color cellColor;
  final bool showCheckboxColumn;
  final int? sortColumnIndex;
  final void Function(bool?)? onSelectAll;
  final Decoration? decoration;
  final double? dataRowMinHeight;
  final double? dataRowMaxHeight;
  final TextStyle? dataTextStyle;
  final MaterialStateProperty<Color?>? headingRowColor;
  final double? headingRowHeight;
  final TextStyle? headingTextStyle;
  final double? horizontalMargin;
  final double? columnSpacing;
  final bool showBottomBorder;
  final double? dividerThickness;
  final double? checkboxHorizontalMargin;
  final TableBorder? border;
  final Clip clipBehavior;

  const SoftDataTable({
    Key? key,
    required this.columns,
    required this.rows,
    this.headerColor = Colors.blue,
    this.cellColor = Colors.white,
    this.showCheckboxColumn = true,
    this.sortColumnIndex,
    this.onSelectAll,
    this.decoration,
    this.dataRowMinHeight,
    this.dataRowMaxHeight,
    this.dataTextStyle,
    this.headingRowColor,
    this.headingRowHeight,
    this.headingTextStyle,
    this.horizontalMargin,
    this.columnSpacing,
    this.showBottomBorder = false,
    this.dividerThickness,
    this.checkboxHorizontalMargin,
    this.border,
    this.clipBehavior = Clip.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      showCheckboxColumn: showCheckboxColumn,
      sortColumnIndex: sortColumnIndex,
      onSelectAll: onSelectAll,
      dataRowMinHeight: dataRowMinHeight,
      dataRowMaxHeight: dataRowMaxHeight,
      dataTextStyle: dataTextStyle,
      headingRowColor: headingRowColor,
      headingRowHeight: headingRowHeight,
      headingTextStyle: headingTextStyle,
      horizontalMargin: horizontalMargin,
      columnSpacing: columnSpacing,
      showBottomBorder: showBottomBorder,
      dividerThickness: dividerThickness,
      columns: columns,
      rows: rows,
      checkboxHorizontalMargin: checkboxHorizontalMargin,
      border: border,
      clipBehavior: clipBehavior,
    );
  }
}

