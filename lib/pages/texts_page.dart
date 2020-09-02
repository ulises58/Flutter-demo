import 'package:demo/components/page_component.dart';
import 'package:demo/models/text_model.dart';
import 'package:demo/utils/custom_drawer.dart';
import 'package:demo/widgets/text_widget.dart';
import 'package:flutter/material.dart';


class TextsPage extends StatelessWidget with PageComponent{
  static const String ROUTE = '/text';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hola desde aqui"),),
      drawer: CustomDrawer.getDrawer(context),
      body: Column(children: buildWidgets(getData(),TextWidget.build))
      // buildWidget(getData())
    );
  }
  List<TextModel> getData(){
    List<TextModel> textModels = List();
    for(int i=0; i<5; i++)
        textModels.add(TextModel.constructor("hola"));
    return textModels;
  }


}