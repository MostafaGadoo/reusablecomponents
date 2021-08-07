
import 'package:flutter/material.dart';

Widget bmiRow({
  Color color = Colors.blue,
  @required String text,}) => Container(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
        Icons.handyman,
        color: Colors.black,

      ),
        SizedBox(
        height: 15.0,
        ),
        Text(
        text.toUpperCase(),
        style: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
      ),
      ),
      ],
      ),
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(
      10.0,
      ),
      color: color,
      ),
      );

Widget defaultButton({
  @required Function function,
  double width = double.infinity,
  Color background = Colors.blue,
  @required String text,
  double radius = 10.0,
  bool isUpper = true,}) => Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(radius),
    color: background,
  ),
  width: width,

  child: MaterialButton(
    onPressed: function,
    child: Text(
      isUpper ? text.toUpperCase() : text,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  ),
);

Widget defaultFormField({
  @required TextEditingController controller,
  @required TextInputType type,
  @required Function validate,
  @required String label,
  @required IconData prefix,
  IconData suffix,
  Function onSubmit,
  Function onChanged,
  bool isPassword = false,
  Function suffixPressed,
}) => TextFormField(
      controller: controller,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(
            prefix,
        ),
          suffixIcon: suffix != null ? IconButton(
            onPressed: suffixPressed,
            icon: Icon(
              suffix,
        ),
          ) : null,
         border: OutlineInputBorder(),
      ),
        keyboardType: type,
        obscureText: isPassword,
        onFieldSubmitted: onSubmit,
        onChanged: onChanged,
        validator: validate
    );