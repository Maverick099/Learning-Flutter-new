import 'package:flutter/material.dart';

import 'CpnversionPage.dart';

class Conversions {
  Conversions() {
    var get_name = ConversionPage.Name;
  }

  ConvertLength() {
    color:
    Colors.teal;

    var LengthColorSwatch = ColorSwatch(0xFF009688, {
      'Header': Color(0xFF009688),
      'Border': Color(0xff004D4D),
      'background': Color(0xFFB2DFDB),
    });

    DropdownButton _normalDown() =>
        DropdownButton<String>(
          items: [
            DropdownMenuItem(
              value: "1",
              child: Center(child: Text("Km")),
            ),
            DropdownMenuItem(value: "2", child: Center(child: Text("m"))),
          ],
        );
  }
}
