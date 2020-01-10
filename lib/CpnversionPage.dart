import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ConversionPage extends StatefulWidget {
  static var Name;
  static var j;

  @override
  _unitConnvertPage createState() => _unitConnvertPage();
}

class _unitConnvertPage extends State<ConversionPage> {
  @override
  var _name = ConversionPage.Name;

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blueGrey[700],
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Text(
          "${_name} Conversion",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
        ),
        elevation: 0.0,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 100,
          color: Colors.blue[200],
          child: Column(
            children: <Widget>[
              Directionality(
                textDirection: TextDirection.rtl,
                child: TextField(
                  keyboardType: TextInputType.numberWithOptions(
                      signed: true, decimal: true),
                  decoration: InputDecoration(
                      labelText: "Input",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      errorText: "Invalid number"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
