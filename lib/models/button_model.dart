class ButtonModel {
  String text;
  String colorBg;
  String color;
  String type;
  Function fun;
  
  ButtonModel.constructor(String text, String colorBg,String color, String type){
    this.colorBg = colorBg;
    this.text = text;
    this.type = type;
    this.color = color;
    // this.fun = ButtonWidget.build;
  }

}