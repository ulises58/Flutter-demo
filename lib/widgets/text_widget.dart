import 'package:demo/models/text_model.dart';
import 'package:flutter/material.dart';

class TextWidget {  
  
  static Widget build(TextModel textModel) {
    return buildWidget(textModel);
  }

  static Widget buildWidget(TextModel textModel){
    return  Text(textModel.text);
  }

}