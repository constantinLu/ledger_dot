import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:raven/raven.dart';

class ClientView extends StatelessWidget {
  final List<PlutoColumn> columns = [
    PlutoColumn(title: 'Id', field: 'id', type: PlutoColumnType.text()),
    PlutoColumn(title: 'Alias', field: 'alias', type: PlutoColumnType.text()),
    PlutoColumn(title: 'Client Name', field: 'clientName', type: PlutoColumnType.text()),
    PlutoColumn(title: 'Vat No', field: 'vatNo', type: PlutoColumnType.text()),
    PlutoColumn(title: 'Since', field: 'since', type: PlutoColumnType.text()),
  ];

  final List<PlutoRow> rows = [
    PlutoRow(
      cells: {
        'id': PlutoCell(value: '1'),
        'alias': PlutoCell(value: 'A1'),
        'clientName': PlutoCell(value: 'John Doe'),
        'vatNo': PlutoCell(value: '12345'),
        'since': PlutoCell(value: '2021'),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: '2'),
        'alias': PlutoCell(value: 'B2'),
        'clientName': PlutoCell(value: 'Jane Smith'),
        'vatNo': PlutoCell(value: '67890'),
        'since': PlutoCell(value: '2020'),
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: PlutoGrid(
          columns: columns,
          rows: rows,
          configuration: PlutoGridConfiguration(
            style: PlutoGridStyleConfig(
              borderColor: kcGreySpanish,
              gridBackgroundColor: kcGreySpanish,
            ),
          ),
          onChanged: (PlutoGridOnChangedEvent event) {
            // Handle any change events here if needed
          },
        ),
      ),
    );
  }
}
