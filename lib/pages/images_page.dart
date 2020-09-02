import 'package:demo/components/page_component.dart';
import 'package:demo/models/image_model.dart';
import 'package:demo/utils/custom_drawer.dart';
import 'package:demo/widgets/image_widget.dart';
import 'package:flutter/material.dart';

class ImagesPage extends StatelessWidget with PageComponent{
  static const String ROUTE = '/images';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImagesPage"),
      ),
      drawer: CustomDrawer.getDrawer(context),
      body: Column(children: buildWidgets(getData(),ImageWidget.build)),
    );
  }

  /*
    * Obtiene la data y compone el modelo
   */

  List<ImageModel> getData() {
    List<ImageModel> imageModels = List();

    for (int i = 0; i < 2; i++)
      imageModels.add(ImageModel.constructor("https://cdn.pixabay.com/photo/2019/08/14/10/34/greece-4405357_1280.jpg"));

    return imageModels;
  }

}
