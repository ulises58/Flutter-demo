import 'package:demo/models/chip_model.dart';
import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  final ChipModel chipModel;
  const ChipWidget (this.chipModel);
  
  @override
  Widget build(BuildContext context) {
    return buildWidget();
  }

  Widget buildWidget(){
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