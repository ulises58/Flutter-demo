import 'package:flutter/material.dart';


class PageComponent {

    List<Widget> buildWidgets(List buttonModels, Function fun){
    List<Widget> widgets = List();
    buttonModels.forEach((buttonModel) {
      widgets.add(fun(buttonModel));
    });
    return widgets;
  }

}