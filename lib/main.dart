import 'package:flutter/material.dart';

import 'custom_icon1.dart';

void main() {
  runApp(UnitConverterApp());
}

class UnitConverterApp extends StatelessWidget {
  UnitConverterApp();

  String Name = 'Length';
  var colorT = Colors.blue;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: RectangleContainer(),
    );
  }
}

class RectangleContainer extends StatelessWidget {
  static const _CategoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency'
  ];
  static const _ColorNames = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red
  ];

  static const _IconsNames = [
    Icon(CustomIcon1.ruler_, size: 50.0, color: Colors.white30),
    Icon(CustomIcon1.area_, size: 50.0, color: Colors.white30),
    Icon(CustomIcon1.lab_, size: 50.0, color: Colors.white30),
    Icon(CustomIcon1.weight_scale_, size: 50.0, color: Colors.white30),
    Icon(Icons.access_time, size: 50.0, color: Colors.white30),
    Icon(Icons.disc_full, size: 50.0, color: Colors.white30),
    Icon(Icons.power, size: 50.0, color: Colors.white30),
    Icon(Icons.euro_symbol, size: 50.0, color: Colors.white30)
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.blueGrey[700],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[700],
          title: Text(
            "Unit Converter",
            style: TextStyle(fontSize: 30.0, color: Colors.white),
          ),
          elevation: 0.0,
        ),
        body: ListView.builder(
            itemCount: _CategoryNames.length,
            itemBuilder: (BuildContext context, int CategoryNumber) {
              return Container(
                  height: 100.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      splashColor: _ColorNames[CategoryNumber],
                      highlightColor: _ColorNames[CategoryNumber],
                      borderRadius: BorderRadius.circular(25.0),
                      onTap: () {
                        print("I was tapped");
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: _IconsNames[CategoryNumber])),
                          Expanded(
                            child: Center(
                              child: Text(
                                _CategoryNames[CategoryNumber],
                                style: TextStyle(
                                    fontSize: 25.0, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ));
            }));
  }
}
