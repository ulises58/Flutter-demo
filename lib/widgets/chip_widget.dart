import 'package:demo/models/chip_model.dart';
import 'package:flutter/material.dart';

class ChipWidget {  
  
  static Widget build(ChipModel chipModel) {
    return buildWidget(chipModel);
  }

  static Widget buildWidget(ChipModel chipModel){
    return  Chip(
        backgroundColor: Color(int.parse(chipModel.colorBg, radix: 16)),
        avatar: CircleAvatar(
          backgroundColor: Color(int.parse(chipModel.colorIcon, radix: 16)),
          child: Icon(Icons.access_alarm), 
          //Text("AC"),
          ),
        //avatar: Icon(Icons.access_alarm),
        label: Text(chipModel.label)
        );
  }

}