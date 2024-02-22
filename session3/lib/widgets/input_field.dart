import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final bool obsecureText;
  final TextInputType keyboardType;
  final Widget? prefix;
  final Widget? suffix;
  final String hintText;
  final String? Function(String?) validator;
  const InputField({super.key,required this.controller,this.obsecureText =false,this.keyboardType = TextInputType.text,this.prefix,this.suffix,required this.hintText, required this.validator});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
    validator: validator,
    decoration: InputDecoration(
        errorBorder:_getBorder(color: Colors.red) ,
        focusedBorder: _getBorder(),
        enabledBorder: _getBorder(),
        hintText: hintText,
        hintStyle: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    prefixIcon: prefix,
    suffixIcon:suffix ),
    obscureText: obsecureText,
    keyboardType: keyboardType,
    );
  }
  InputBorder _getBorder({Color color = Colors.black}){
    return  OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(50.0)),
      borderSide: BorderSide(
        width: 2,
        color: color,
    )
    );
  }
}
