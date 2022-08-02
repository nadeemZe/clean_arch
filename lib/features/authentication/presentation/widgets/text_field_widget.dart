import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget{

  final TextEditingController controller;
  final String hint;
  final IconData icon;

  const TextFieldWidget({Key? key,
             required this.controller,
             required this.hint,
             required this.icon}): super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintStyle: const TextStyle(color:Colors.black38,fontSize:12),
          hintText:hint,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide:const BorderSide(
              color: Colors.black87,
            ),
          ),
          focusedBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide:const BorderSide(
                color: Colors.black87,
                width: 1
            ),
          ),
          filled: true,
          fillColor:Colors.white ,
          suffixIcon: Icon(icon, color:Colors.black38,)
      ),
    );
  }
}