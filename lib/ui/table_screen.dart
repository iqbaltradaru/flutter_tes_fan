import 'package:flutter/material.dart';

class TableScreen extends StatelessWidget {
  static const routeName = "/table_screen";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TableScreenPage(title: 'Tes Flutter 1'),
    );
  }
}

class TableScreenPage extends StatefulWidget {
  TableScreenPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _TableScreenPageState createState() => _TableScreenPageState();
}

class _TableScreenPageState extends State<TableScreenPage> {
  int _listRow = 0, _listColumn = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          _btnAction(),
          _table(),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  _btnAction() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _btnAdd(title: 'Reset', action: 'reset'),
        _btnAdd(title: 'Add Row', action: 'row'),
        _btnAdd(title: 'Add Column', action: 'column'),
      ],
    );
  }

  _btnAdd({title, action}) {
    return Container(
      margin: EdgeInsets.all(10),
      child: FlatButton(
        child: Text(title),
        onPressed: () {
          if (action == 'column') {
            _listColumn += 1;
            if (_listColumn == 1) {
              _listRow += 1;
            }
          } else if (action == 'row') {
            _listRow += 1;
            if (_listRow == 1) {
              _listColumn += 1;
            }
          } else {
            _listColumn = 0;
            _listRow = 0;
          }
          setState(() => _listColumn);
        },
      ),
    );
  }

  _table() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: createTable(),
    );
  }

  Widget createTable() {
    List<TableRow> rows = [];
    for (int i = 0; i < _listRow; ++i) {
      List<TableCell> colums = [];
      for (int ii = 0; ii < _listColumn; ++ii) {
        colums.add(TableCell(
          child: Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(2),
            color: Colors.grey,
            height: 30,
            width: 30,
            child: Text("${i},${ii}"),
          ),
        ));
      }
      rows.add(TableRow(children: colums));
    }
    return Table(children: rows);
  }
}
