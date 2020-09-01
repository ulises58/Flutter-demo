import 'package:demo/models/button_model.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  
  final ButtonModel buttonModel;
  const ButtonWidget (this.buttonModel);
  
  @override
  Widget build(BuildContext context) {
    return buildWidget();
  }

  Widget buildWidget() {

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