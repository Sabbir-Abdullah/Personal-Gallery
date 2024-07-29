
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class CustomButton{
  static Button(VoidCallback onPressed, String text, ){
    return SizedBox(height: 50,width: 300,
      child: ElevatedButton(onPressed: () {
        onPressed();
      }, child: Text(text,style: TextStyle(color: textWhite,fontSize: 20),),
        style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(buttonColor)),
      ) ,
    );
  }

}


