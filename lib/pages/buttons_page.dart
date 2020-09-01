import 'package:demo/models/button_model.dart';
import 'package:demo/utils/custom_drawer.dart';
import 'package:demo/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {

  static const String ROUTE = '/buttons';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tablero de botones"),),
      drawer: CustomDrawer.getDrawer(context),
      body: Column(children: buildWidgets(getData()))
    );
  }


  List<ButtonModel> getData(){
    List<ButtonModel> buttonModels = List();
    for(int i=0; i<5; i++)
        buttonModels.add(ButtonModel.constructor("Flat $i", "FFFF0000", "FFFFFFFF", "flat"));
    return buttonModels;
  }


  List<Widget> buildWidgets(List<ButtonModel> buttonModels){
    List<Widget> buttonWidgets = List();
    buttonModels.forEach((buttonModel) {
      buttonWidgets.add(ButtonWidget(buttonModel));
    });
    return buttonWidgets;
  }

  
}