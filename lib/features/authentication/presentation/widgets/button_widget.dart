import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget{

  final Function onPressed;
  final String text;

  const ButtonWidget({Key? key,
                     required this.onPressed,
                     required this.text
                    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){
          onPressed;
          Navigator.pushReplacementNamed(context, '/features/categories/presentation/pages/categories_page');
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.black),
          shape: MaterialStateProperty.all( RoundedRectangleBorder(
            borderRadius:  BorderRadius.circular(30.0),
          ),),
        ),
        child:  Text(
          text,
          style:const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize:17,
          ),)
    );
  }
}