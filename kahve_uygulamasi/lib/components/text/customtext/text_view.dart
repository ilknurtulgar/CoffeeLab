import 'package:flutter/material.dart';

class CustomText {
  final String? text;
  
  final double height;
  final double width;
  final Color color;
  final EdgeInsets padding;
  final TextStyle textStyle;
  final BorderRadius borderRadius;
  final TextAlign textAlign;
  CustomText(
      {required this.height,
      required this.width,
      required this.color,
      required this.padding,
      required this.textStyle,
      required this.borderRadius,
      required this.textAlign,
      
       this.text});
}
class CustomTextBox extends CustomText{
 final String text2;
 CustomTextBox({

      required super.color,
      required super.text,
      required super.borderRadius,
      required super.height,
      required super.padding,
      required super.textAlign,
      required super.textStyle,
      required super.width,
      required this.text2,

 });

}

class ImageBox extends CustomText {
  final String image;
  ImageBox(
      {required this.image,
      required super.color,
       super.text,
      required super.borderRadius,
      required super.height,
      required super.padding,
      required super.textAlign,
      required super.textStyle,
      required super.width,
      });
}

class ButtonBox extends CustomText {
  final Function ontap;
  ButtonBox({required this.ontap,
   required super.borderRadius,
    required super.text,
    required super.color,
    required super.height,
    required super.padding,
  
    required super.textAlign,
    required super.textStyle,
    required super.width});
}
//yasemin
customImageBox() {
  ImageBox(image: "assets/frappe.jpg", color: Colors.amberAccent, text: "fd",borderRadius: ,height: ,padding: ,text2: ,textAlign: ,textStyle: ,width: );
}
customTextBoxView(){
  CustomTextBox(color: Colors.black, text: "text", borderRadius: borderRadius, height: height, padding: padding, textAlign: textAlign, textStyle: textStyle, width: width, text2: text2);
}
//gizem
customButtonBox() {
  ButtonBox(ontap: () {}, color: Colors.black, text: " cf",borderRadius: ,height: ,padding: ,textAlign: ,textStyle: ,width: );
}

//ilknur
customTextBox() {
  CustomText(color: Colors.black, text: "text",borderRadius: ,height: ,padding: ,text2: ,textAlign: ,textStyle: ,width: ,
  );
}
