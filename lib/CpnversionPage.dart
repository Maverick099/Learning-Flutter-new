import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ConversionPage extends StatefulWidget {
  @override
  _unitConnvertPage createState() => _unitConnvertPage();
}

class _unitConnvertPage extends State<ConversionPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        title: Text(
          "Conversion",
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
