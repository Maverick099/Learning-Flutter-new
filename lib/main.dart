import 'package:flutter/material.dart';
import 'custom_icon1_icons.dart';
void main() {
  runApp(UnitConverterApp());
}

class UnitConverterApp extends StatelessWidget {
  UnitConverterApp();

  String Name = 'Length';
  var colorT = Colors.blue;
  var IconsLO = Icons.calendar_today;

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

  static const _IconsNames =[
    Icon(CustomIcon1.ruler),
    Icon(CustomIcon1.lab),
    Icon(CustomIcon1.weight_scale),
    Icon(Icons.access_time),
    Icon(Icons.disc_full),
    Icon(Icons.power),
    Icon(Icons.euro_symbol)

  ]
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.blueGrey[700],
        appBar: AppBar(backgroundColor: Colors.blueGrey[700],
          title: Text(
            "Unit Converter",
            style: TextStyle(fontSize: 30.0,color: Colors.white),
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
                    child: Center(
                      child: InkWell(
                        splashColor: _ColorNames[CategoryNumber],
                        highlightColor: _ColorNames[CategoryNumber],
                        borderRadius: BorderRadius.circular(50.0),
                        onTap: () {
                          print("I was tapped");
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child:
                            )),
                            Expanded(
                              child: Center(
                                child: Text(
                                  _CategoryNames[CategoryNumber],
                                  style: TextStyle(fontSize: 24.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ));
            }));
  }
}
