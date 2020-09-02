import 'package:demo/components/page_component.dart';
import 'package:demo/models/chip_model.dart';
import 'package:demo/utils/custom_drawer.dart';
import 'package:demo/widgets/chip_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/chip_widget.dart';

class ChipsPage extends StatelessWidget with PageComponent{

  static const String ROUTE = '/chips';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hola desde aqui"),),
      drawer: CustomDrawer.getDrawer(context),
      body: Column(children: buildWidgets(getData(),ChipWidget.build))
      // buildWidget(getData())
    );
  }

  List<ChipModel> getData(){
    List<ChipModel> chipModels = List();
    for(int i=0; i<5; i++)
        chipModels.add(ChipModel.constructor("FFFFFF", "FF0000", "chip $i", "access_alarm"));
    return chipModels;
  }
}