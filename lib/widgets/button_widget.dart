import 'package:flutter/material.dart';
import '../models/button_model.dart';


class ButtonWidget {
  
  static Widget build(ButtonModel buttonModel) {
    return buildWidget(buttonModel);
  }

  /*
  * Construir widget
   */

  static Widget buildWidget(ButtonModel buttonModel) {

    switch(buttonModel.type){
      case "flat":
      return FlatButton(
        color: Color(int.parse(buttonModel.colorBg, radix: 16)),
        textColor: Color(int.parse(buttonModel.color, radix: 16)),
        splashColor: Color(int.parse(buttonModel.color, radix: 16)),
        child: Text(buttonModel.text),
        onPressed: (){

        },
      );
      //case "raised":
      default:
      return RaisedButton(
        color: Color(int.parse(buttonModel.colorBg, radix: 16)),
        textColor: Color(int.parse(buttonModel.color, radix: 16)),
        splashColor: Color(int.parse(buttonModel.color, radix: 16)),
        child: Text(buttonModel.text),
        onPressed: (){

        },
      );
    }

  }

}