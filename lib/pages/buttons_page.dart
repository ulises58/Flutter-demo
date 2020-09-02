import 'package:demo/components/page_component.dart';
import 'package:flutter/material.dart';

import '../models/button_model.dart';
import '../utils/custom_drawer.dart';
import '../widgets/button_widget.dart';


class ButtonsPage extends StatelessWidget with PageComponent {
  static const String ROUTE = '/buttons';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ButtonPage"),
      ),
      drawer: CustomDrawer.getDrawer(context),
      body: Column(children: buildWidgets(getData(), ButtonWidget.build)),
    );
  }

  List<ButtonModel> getData() {
    List<ButtonModel> buttonModels = List();

    for (int i = 0; i < 3; i++)
      buttonModels.add(ButtonModel.constructor(
          "Flat $i", "FFFF0000","FFFFFFFF",  "flat"));

    for (int i = 0; i < 3; i++)
      buttonModels.add(ButtonModel.constructor(
          "Raised $i", "FF00FF00","FFFFFFFF",  "raised"));

    return buttonModels;
  }

  
}
