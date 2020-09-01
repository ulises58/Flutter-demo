import 'package:demo/models/chip_model.dart';
import 'package:demo/utils/custom_drawer.dart';
import 'package:demo/widgets/chip_widget.dart';
import 'package:flutter/material.dart';

class ChipsPage extends StatelessWidget {

  static const String ROUTE = '/chips';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hola desde aqui"),),
      drawer: CustomDrawer.getDrawer(context),
      body: Column(children: buildWidgets(getData()))
      // buildWidget(getData())
    );
  }

  /*
  * Obtienes la data y
  */

  List<ChipModel> getData(){
    List<ChipModel> chipModels = List();
    for(int i=0; i<5; i++)
        chipModels.add(ChipModel.constructor("FFFFFF", "FF0000", "Pedro $i", "access_alarm"));
    return chipModels;
  }

  List<Widget> buildWidgets(List<ChipModel> chipModels){
    List<Widget> chipWidgets = List();
    chipModels.forEach((chipModel) {
      chipWidgets.add(ChipWidget(chipModel)
      );
    });
    return chipWidgets;
  }
}