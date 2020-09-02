import 'package:demo/models/image_model.dart';
import 'package:flutter/material.dart';


class ImageWidget {

  static Widget build(ImageModel imageModel) {
    return buildWidget(imageModel);
  }

  /*
  * Construir widget
   */

  static Widget buildWidget(ImageModel imageModel) {
    return FadeInImage(
      placeholder: AssetImage("assets/loading.gif"),
      image: NetworkImage(imageModel.url),);
  }

}
